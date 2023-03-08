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
#' @param data A data frame
#' @param col_var Column of interest to calculate ordered frequency table
#'
#' @return A data frame
#' @export
#'
#' @examples
#' pct_fun(iris, col_var = Species)
pct_fun <- function(data = dat, col_var) {

  quo_col_var <- rlang::enquo(col_var)

  data |>
    dplyr::filter(!is.na(!!quo_col_var)) |>
    dplyr::count(!!quo_col_var) |>
    dplyr::mutate(Percent = scales::percent(n / sum(n))) |>
    dplyr::arrange(dplyr::desc(n))
}
