#' Use ASN Quarto Typst Template
#'
#' Copies the ASN Typst extension and a starter Quarto document into
#' the specified directory.
#'
#' @param path Character. Path to the target directory. Defaults to the
#'   current working directory.
#'
#' @return Invisibly returns `NULL`. Called for its side effects.
#' @export
asn_use_template <- function(path = ".") {
  if (!dir.exists(path)) {
    dir.create(path, recursive = TRUE)
  }

  ext_dir <- system.file("quarto/_extensions", package = "asn")
  qmd <- system.file("quarto/templates/asn-report.qmd", package = "asn")

  file.copy(from = ext_dir, to = path, recursive = TRUE)
  file.copy(from = qmd, to = path)
}
