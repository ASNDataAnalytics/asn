# Count number of unique responses to 'Select All'/'Check All' survey questions

Count number of unique responses to 'Select All'/'Check All' survey
questions

## Usage

``` r
check_all(
  data,
  group_var = NULL,
  column_prefix,
  free_text_var_suffix = "_TEXT"
)
```

## Arguments

- data:

  A data frame, typically results from a Qualtrics survey, where
  responses to 'Select All'/'Check All' questions are recorded in
  consecutive columns named using the format:
  `Question-Number_Response-Option-Number`. For example, if Question 2
  was a "Select All" question with 4 possible response options the
  column names would be: `Q2_1`, `Q2_2`, `Q2_3`, `Q2_4`.

- group_var:

  Column name for the grouping variable to aggregate the results by.

- column_prefix:

  The prefix for the "Select All" question number. For example, "Q2" for
  Question 2.

- free_text_var_suffix:

  Did the "Select All"/"Check All" question have a free-text response
  option? If so, enter the suffix indicating the column name for
  free-text responses, typically "\_TEXT". This will prevent a subscript
  out of bounds error.

## Value

A data frame.

## Examples

``` r
# Grouped Results
check_all(
  data = board_prep_df,
  group_var = q6,
  column_prefix = "q65",
  free_text_var_suffix = "_6_text"
 )
#> # A tibble: 12 × 3
#>    q6            Variable                                                   N
#>    <chr>         <chr>                                                  <int>
#>  1 Other country ASN Board Review Course & Update                          92
#>  2 Other country ASN Kidney Self-Assessment Program (KSAP)                101
#>  3 Other country ASN Nephrology Self-Assessment Program (NephSAP)          67
#>  4 Other country Oakstone/Brigham Intensive Review of Nephrology Course    14
#>  5 Other country Other board review course                                 11
#>  6 Other country Other resource(s) (please specify)                         9
#>  7 United States ASN Board Review Course & Update                          53
#>  8 United States ASN Kidney Self-Assessment Program (KSAP)                 73
#>  9 United States ASN Nephrology Self-Assessment Program (NephSAP)          44
#> 10 United States Oakstone/Brigham Intensive Review of Nephrology Course     9
#> 11 United States Other board review course                                  1
#> 12 United States Other resource(s) (please specify)                         2

# Ungrouped Results
check_all(
  data = board_prep_df,
  column_prefix = "q65",
  free_text_var_suffix = "_6_text"
 )
#> # A tibble: 6 × 2
#>   Variable                                                   N
#>   <chr>                                                  <int>
#> 1 ASN Board Review Course & Update                         145
#> 2 ASN Kidney Self-Assessment Program (KSAP)                174
#> 3 ASN Nephrology Self-Assessment Program (NephSAP)         111
#> 4 Oakstone/Brigham Intensive Review of Nephrology Course    23
#> 5 Other board review course                                 12
#> 6 Other resource(s) (please specify)                        11
```
