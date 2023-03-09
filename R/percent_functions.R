#' Function to calculate percentage change from previous observation
#' @import dplyr
#' @param x Numeric vector
#'
#' @return Numeric vector
#' @export
#'
#' @examples
#' library(dplyr)
#' x <- 1:5
#' pct_chg(x)
pct_chg <- function(x) {

  y <- dplyr::lag(x)

  z <- ((x - y) / y) |>
    (\(x) replace(x, is.na(x), 0))()

  z

}

#' Function to calculate percentage change from first observation in vector
#'
#' @param x Numeric vector
#'
#' @return Numeric vector
#' @export
#'
#' @examples
#' library(dplyr)
#' x <- 1:5
#' pct_norm(x)
pct_norm <- function(x) {

  y <- x[1]

  z <- ((x - y) / y) |>
    (\(x) replace(x, is.na(x), 0))()

  z

}

#' Function to create ordered frequency table with percentages for each level
#' @import rlang
#' @import dplyr
#' @import scales
#' @param data A data frame
#' @param col_var Column of interest to calculate ordered frequency table
#' @param likert Is variable a Likert scale question/item? Will retain scale order if TRUE.
#' @param accuracy Round to how many decimal places for Percent column. Default = 1.
#' @return A data frame
#' @export
#'
#' @examples
#' pct_fun(iris, col_var = Species)
pct_fun <- function(data, col_var, likert = FALSE, accuracy = 1) {

  quo_col_var <- rlang::enquo(col_var)

  summary_tbl <-
    data |>
      dplyr::filter(!is.na(!!quo_col_var)) |>
      dplyr::count(!!quo_col_var) |>
      dplyr::mutate(
        Percent = scales::percent(
          n / sum(n),
          accuracy = accuracy
          )
        )

  if(likert) {

    return(summary_tbl)

  } else {

    summary_tbl |>
      dplyr::arrange(dplyr::desc(n))
  }

}
