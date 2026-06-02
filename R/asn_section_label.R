#' Create a consistent-width section label
#'
#' Creates a custom commented section label for outlining sections in your script that is copied to the clipboard for pasting in R code and Typst/Quarto documents.
#'
#' @param label The section name, typically prefixed with section number.
#' @param typst Logical. Changes the comment character for section labels in a Typst document. Default FALSE.
#'
#' @returns A character string of the section label, invisibly. Also copied to the clipboard in interactive sessions.
#'
#' @export
#' @examples
#' \dontrun{
#'   asn_section_label("01 Data")
#' }
asn_section_label <- function(label = "00 Libraries", typst = FALSE) {
  comment <- ifelse(typst == FALSE, "# ", "// ")
  size <- ifelse(typst == FALSE, 72, 71)
  rep_length <- size - nchar(label)

  result <- paste0(
    comment,
    label,
    " ",
    paste0(rep("-", rep_length), collapse = "")
  )

  if (interactive()) {
    clipr::write_clip(result)
  }

  invisible(result)
}
