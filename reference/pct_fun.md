# Function to create ordered frequency table with percentages for each level

Function to create ordered frequency table with percentages for each
level

## Usage

``` r
pct_fun(data, col_var, likert = FALSE, accuracy = 1)
```

## Arguments

- data:

  A data frame

- col_var:

  Column of interest to calculate ordered frequency table

- likert:

  Is variable a Likert scale question/item? Will retain scale order if
  TRUE.

- accuracy:

  Round to how many decimal places for Percent column. Default = 1.

## Value

A data frame

## Examples

``` r
pct_fun(iris, col_var = Species)
#>      Species  n Percent
#> 1     setosa 50     33%
#> 2 versicolor 50     33%
#> 3  virginica 50     33%
```
