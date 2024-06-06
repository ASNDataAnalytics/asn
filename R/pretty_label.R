#' Create a consistent-width section label
#'
#' @param label The section name, typically prefixed with section number.
#'
#' @return A line of unquoted text that can be copied from the console and pasted in the source file.
#' @export
#'
#' @examples
#' pretty_label("01 Data")
pretty_label <- function(label = "00 Libraries") {

  rep_length <- 72 - nchar(label)

  paste0(
    "# ",
    label,
    " ",
    paste0(
      rep("-", rep_length),
      collapse = ""
    )
  ) |>
    writeLines()
}
