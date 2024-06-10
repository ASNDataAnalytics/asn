#' Retrieve labels from labeled data frames from SPSS `.sav` files
#'
#' Convenience function to extract labels from labelled data frames or objects,
#' usually questions from Qualtrics data imported into R using the `haven` package.
#' @param x A labelled R object
#' @return Labels from R an object
#' @export
#'
#' @examples
#' label_example <- structure(
#'   data.frame(Q15_1 = c("City", "Country", "Country")),
#'   label = "Where do you live?"
#'   )
#'
#' get_labs(label_example)
get_labs <- function(x) {
  attr(x, "label", exact = TRUE)
}
