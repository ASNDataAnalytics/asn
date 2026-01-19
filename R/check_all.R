#' Count number of unique responses to 'Select All'/'Check All' survey questions
#' @import dplyr
#' @import rlang
#' @import tidyr
#' @import tidyselect
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
#' # Grouped Results
#' check_all(
#'   data = board_prep_df,
#'   group_var = q6,
#'   column_prefix = "q65",
#'   free_text_var_suffix = "_6_text"
#'  )
#'
#' # Ungrouped Results
#' check_all(
#'   data = board_prep_df,
#'   column_prefix = "q65",
#'   free_text_var_suffix = "_6_text"
#'  )

check_all <- function(
  data,
  group_var = NULL,
  column_prefix,
  free_text_var_suffix = "_TEXT"
) {
  group_var_expr <- rlang::enquo(group_var)
  free_text_column <- paste0(column_prefix, free_text_var_suffix)
  has_free_text <- free_text_column %in% names(data)
  # Select relevant columns
  if (rlang::quo_is_null(group_var_expr)) {
    if (has_free_text) {
      data_filtered <-
        data |>
        dplyr::select(tidyselect::contains(column_prefix)) |>
        dplyr::select(!tidyselect::all_of(free_text_column))
    } else {
      data_filtered <-
        data |>
        dplyr::select(tidyselect::contains(column_prefix))
    }
  } else {
    if (has_free_text) {
      data_filtered <-
        data |>
        dplyr::select(!!group_var_expr, tidyselect::contains(column_prefix)) |>
        dplyr::select(!tidyselect::all_of(free_text_column))
    } else {
      data_filtered <- 
        data |>
        dplyr::select(!!group_var_expr, tidyselect::contains(column_prefix))
    }
  }
  
  # Pivot and count
  if (rlang::quo_is_null(group_var_expr)) {
    data_filtered |>
      tidyr::pivot_longer(
        cols = everything(),
        names_to = "question",
        values_to = "value"
      ) |>
      dplyr::filter(!is.na(value)) |>
      dplyr::count(value, name = "N") |>
      dplyr::rename(Variable = value)
  } else {
    data_filtered |>
      tidyr::pivot_longer(
        cols = -!!group_var_expr,
        names_to = "question",
        values_to = "value"
      ) |>
      dplyr::filter(!is.na(value)) |>
      dplyr::count(!!group_var_expr, value, name = "N") |>
      dplyr::rename(Variable = value)
  }
}
