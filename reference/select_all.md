# Count the number of unique responses to "Select All" Questions

**\[superseded\]**

`select_all()` has been superseded in favor of
[`check_all()`](https://asndataanalytics.github.io/asn/reference/check_all.md)
because of a name space conflict with the deprecated
[`dplyr::select_all()`](https://dplyr.tidyverse.org/reference/select_all.html).
For backward compatability prefix the function with the package name:
`asn::select_all()`.

## Usage

``` r
select_all(data, group_var = NULL, column_prefix)
```

## Arguments

- data:

  A data frame, typically from a Qualtrics Survey, where responses to
  'select all' questions are provided in consecutive columns prefixed
  with the question number and underscore, with a number corresponding
  to each response option.

- group_var:

  Column name for aggregrating variable of interest if the results
  should the results be grouped by another variable.

- column_prefix:

  Question number and underscore

## Value

A dataframe.

## Examples

``` r
test_df <-
  dplyr::tribble(
    ~Q4, ~Q15_1, ~Q15_2, ~Q15_3, ~Q15_4,
    "Community", NA, NA, NA, NA,
    "Academic", NA, "TREKS", NA, NA,
    "Academic", NA, NA, "Lipps Fellowship", NA,
    "Community", "STARS", NA, NA, "Campbell Fellows",
    "Academic", "STARS", NA, NA, "Campbell Fellows",
    "Community", NA, "TREKS", NA, NA
   ) |>
  dplyr::mutate(
    dplyr::across(dplyr::everything(), as.factor)
)
select_all(
  data = test_df,
  group_var = Q4,
  column_prefix = "Q15"
)
#> Error: object 'Q4' not found
```
