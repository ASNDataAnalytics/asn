% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_labs.R
\name{get_labs}
\alias{get_labs}
\title{Retrieve labels from labeled data frames from SPSS \code{.sav} files}
\usage{
get_labs(x)
}
\arguments{
\item{x}{A labelled R object}
}
\value{
Labels from R an object
}
\description{
Convenience function to extract labels from labelled data frames or objects,
usually questions from Qualtrics data imported into R using the \code{haven} package.
}
\examples{
label_example <- structure(
  data.frame(Q15_1 = c("City", "Country", "Country")),
  label = "Where do you live?"
  )

get_labs(label_example)
}
