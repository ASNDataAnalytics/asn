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
