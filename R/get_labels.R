#' Retrieve labels from labeled data frames derived from SPSS `.sav` files
#' 
#' Convenience function to extract labels from labelled data frames or objects,
#' usually from survey data captured in Qualtrics imported into R using the `haven` package.
#' @param x A labelled R object
#' @return Labels for the R object
#' @export 
#' 
#' @examples
#' label_example <-
#'   structure(
#'     data.frame(
#'       Q1 = c("U.S.", "Canada", "U.S.", "Germany", "U.S.")
#'     ),
#'     label = "What country do you live in?"
#'   )
#' 
#' get_labels(label_example)
get_labels <- function(x) {
  attr(x, "label", exact = TRUE)
} 