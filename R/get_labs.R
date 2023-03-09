#' Retrieve labels from labeled data frame from SPSS .sav Files
#'
#' Uses purrr's attr_getter() function to create a function to extract labels,m
#' usually questions from Qualtrics data loaded into R from haven.
#' @importFrom purrr attr_getter
#' @param x A labelled R object
#'
#' @return Labels from R object
#' @export
#'
#' @examples
#' label_example <- structure(
#'   c(1:4),
#'   label = "I'm a label"
#'   )
#' get_labs(label_example)
get_labs <- purrr::attr_getter("label")
