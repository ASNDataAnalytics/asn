#' Count number of unique responses to 'Select All'/'Check All' survey questions
#' @import dplyr
#' @import rlang
#' @import forcats
#' @import tidyr
#' @param data A data frame, typically results from a Qualtrics survey, where responses to
#' 'Select All'/'Check All' questions are recorded in consecutive columns named using the
#' format: `Question-Number_Response-Option-Number`. For example, if Question 2
#' was a "Select All" question with 4 possible response options the column names
#' would be: `Q2_1`, `Q2_2`, `Q2_3`, `Q2_4`.
#' @param group_var Column name for the grouping variable to aggregate the results by.
#' @param column_prefix The prefix for the "Select All" question number. For
#' example, "Q2" for Question 2.
#' @param free_text_var_suffix Did the "Select All"/"Check All" question have a
#' free-text response option? If so, enter the suffix indicating the column name
#' for free-text responses, typically "_TEXT". This will prevent a subscript
#' out of bounds error.
#' @return A data frame.
#' @export
#'
#' @examples
#'
#' # Toy Dataset
#' mouse_cheese_df <-
#'   dplyr::tribble(
#'     ~Q1, ~Q2_1, ~Q2_2, ~Q2_3, ~Q2_4, ~Q2_TEXT,
#'     "Country", NA, NA, NA, "Colby", "Brie",
#'     "City", NA, "Gruyere", NA, NA, "",
#'     "City", NA, NA, "Swiss", NA, "Parmesan",
#'     "City", NA, NA, NA, NA, "",
#'     "Country", "Cheddar", NA, NA, "Colby", "",
#'     "City", "Cheddar", NA, NA, "Colby", "",
#'     "Country", "Cheddar", "Gruyere", NA, "Colby", "",
#'     "City", NA, "Gruyere", NA, NA, "",
#'     "City", NA, "Gruyere", NA, NA, "",
#'     "City", NA, NA, "Swiss", NA, "Mozzarella",
#'     "Country", "Cheddar", NA, NA, "Colby", ""
#'   ) |>
#'   dplyr::mutate(
#'     dplyr::across(dplyr::everything(), as.factor)
#'   )
#' # Grouped Results
#' check_all(
#'   data = mouse_cheese_df,
#'   group_var = Q1,
#'   column_prefix = "Q2",
#'   free_text_var_suffix = "_TEXT"
#'  )
#'
#' # Ungrouped Results
#' check_all(
#'   data = mouse_cheese_df,
#'   column_prefix = "Q2",
#'   free_text_var_suffix = "_TEXT"
#'  )
check_all <- function(
    data,
    group_var = NULL,
    column_prefix,
    free_text_var_suffix = "_TEXT"
) {

  group_var_expr <- rlang::enquo(group_var)

  free_text_column <- paste0(column_prefix, free_text_var_suffix)

  num_col <- data |>
    dplyr::select(
      dplyr::all_of(
        dplyr::contains(column_prefix)
      )
    ) |>
    # Omit Free Text Responses
    dplyr::select(
      !free_text_column
    ) |>
    ncol()

  if(rlang::quo_is_null(group_var_expr)) {

    ret <- data |>
      dplyr::select(
        dplyr::all_of(
          dplyr::contains(column_prefix)
        )
      ) |>
      # Omit Free Text Responses
      dplyr::select(
        !free_text_column
      ) |>
      dplyr::rowwise() |>
      dplyr::mutate(
        all_miss = sum(
          is.na(
            dplyr::c_across(
              dplyr::all_of(dplyr::contains(column_prefix))
            )
          )
        )
      ) |>
      dplyr::ungroup() |>
      dplyr::filter(all_miss < num_col) |>
      dplyr::reframe(
        dplyr::across(
          dplyr::all_of(
            dplyr::contains(column_prefix)
          ),
          forcats::fct_count
        )
      ) |>
      tidyr::pivot_longer(
        names_to = column_prefix,
        values_to = "Number",
        cols = dplyr::everything()
      ) |>
      dplyr::select(-column_prefix) |>
      dplyr::mutate(
        column_prefix = Number$f,
        N = Number$n
      ) |>
      dplyr::select(
        Variable = column_prefix,
        N
      ) |>
      tidyr::drop_na() |>
      dplyr::distinct()


  } else {

    ret <- data |>
      dplyr::select(
        !! group_var_expr,
        dplyr::all_of(
          dplyr::contains(column_prefix)
        )
      ) |>
      # Omit Free Text Responses
      dplyr::select(
        !free_text_column
      ) |>
      dplyr::rowwise() |>
      dplyr::mutate(
        all_miss = sum(
          is.na(
            dplyr::c_across(
              dplyr::all_of(contains(column_prefix))
            )
          )
        )
      ) |>
      dplyr::ungroup() |>
      dplyr::filter(all_miss < num_col) |>
      dplyr::group_by(!! group_var_expr) |>
      dplyr::reframe(
        dplyr::across(
          dplyr::all_of(
            dplyr::contains(column_prefix)
          ),
          forcats::fct_count
        )
      ) |>
      dplyr::ungroup() |>
      tidyr::pivot_longer(
        names_to = column_prefix,
        values_to = "Number",
        cols = - !! group_var_expr
      ) |>
      dplyr::select(-column_prefix) |>
      dplyr::mutate(
        column_prefix = Number$f,
        N = Number$n
      ) |>
      dplyr::select(
        !! group_var_expr,
        Variable = column_prefix,
        N
      ) |>
      tidyr::drop_na() |>
      dplyr::distinct()
  }

  ret

}
