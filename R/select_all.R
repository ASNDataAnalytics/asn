#' Count the number of unique responses to "Select All" Questions
#' @import dplyr
#' @import rlang
#' @importFrom rlang .data
#' @import forcats
#' @import tidyr
#' @param data A data frame, typically from a Qualtrics Survey, where responses to 'select all' questions are provided
#' in consecutive columns prefixed with the question number and underscore, with a number
#' corresponding to each response option.
#' @param group_var Column name for aggregrating variable of interest if the
#' results should the results be grouped by another variable.
#' @param column_prefix Question number and underscore
#'
#' @return Either a dataframe or a flextable object
#' @export
#'
#' @examples
#' test_df <-
#'   dplyr::tribble(
#'     ~Q4, ~Q15_1, ~Q15_2, ~Q15_3, ~Q15_4,
#'     "Community", NA, NA, NA, NA,
#'     "Academic", NA, "TREKS", NA, NA,
#'     "Academic", NA, NA, "Lipps Fellowship", NA,
#'     "Community", "STARS", NA, NA, "Campbell Fellows",
#'     "Academic", "STARS", NA, NA, "Campbell Fellows",
#'     "Community", NA, "TREKS", NA, NA
#'    ) |>
#'   dplyr::mutate(
#'     dplyr::across(dplyr::everything(), as.factor)
#' )
#' select_all(
#'   data = test_df,
#'   group_var = Q4,
#'   column_prefix = "Q15"
#' )
select_all <- function(
    data,
    group_var = NULL,
    column_prefix
) {

  group_var_expr <- rlang::enquo(group_var)

  num_col <- data |>
    dplyr::select(
      dplyr::all_of(
      dplyr::contains(column_prefix))
      ) |>
    ncol()

  if(rlang::quo_is_null(group_var_expr)) {

    ret <- data |>
      dplyr::select(
        dplyr::all_of(
          dplyr::contains(column_prefix)
        )
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
        column_prefix,
        N
      ) |>
      tidyr::drop_na()


  } else {

    ret <- data |>
      dplyr::select(
        !! group_var_expr,
        dplyr::all_of(
          dplyr::contains(column_prefix)
        )
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
        column_prefix,
        N
      ) |>
      tidyr::drop_na()
  }

  ret

}
