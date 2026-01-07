# Retrieve labels from labeled data frames derived from SPSS `.sav` files

Convenience function to extract labels from labelled data frames or
objects, usually from survey data captured in Qualtrics imported into R
using the `haven` package.

## Usage

``` r
get_labels(x)

get_labels(x)
```

## Arguments

- x:

  A labelled R object

## Value

Labels for the R object

Labels for the R object

## Examples

``` r
label_example <-
  structure(
    data.frame(
      Q1 = c("U.S.", "Canada", "U.S.", "Germany", "U.S.")
    ),
    label = "What country do you live in?"
  )

get_labels(label_example)
#> [1] "What country do you live in?"
label_example <-
  structure(
    data.frame(
      Q1 = c("U.S.", "Canada", "U.S.", "Germany", "U.S.")
    ),
    label = "What country do you live in?"
  )

get_labels(label_example)
#> [1] "What country do you live in?"
```
