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
# Toy Dataset
mouse_cheese_df <-
  dplyr::tribble(
    ~Q1, ~Q2_1, ~Q2_2, ~Q2_3, ~Q2_4, ~Q2_TEXT,
    "Country", NA, NA, NA, "Colby", "Brie",
    "City", NA, "Gruyere", NA, NA, "",
    "City", NA, NA, "Swiss", NA, "Parmesan",
    "City", NA, NA, NA, NA, "",
    "Country", "Cheddar", NA, NA, "Colby", "",
    "City", "Cheddar", NA, NA, "Colby", "",
    "Country", "Cheddar", "Gruyere", NA, "Colby", "",
    "City", NA, "Gruyere", NA, NA, "",
    "City", NA, "Gruyere", NA, NA, "",
    "City", NA, NA, "Swiss", NA, "Mozzarella",
    "Country", "Cheddar", NA, NA, "Colby", ""
  ) |>
  dplyr::mutate(
    dplyr::across(dplyr::everything(), as.factor)
  )
# Grouped Results
check_all(
  data = mouse_cheese_df,
  group_var = Q1,
  column_prefix = "Q2",
  free_text_var_suffix = "_TEXT"
 )
#> # A tibble: 8 × 3
#>   Q1      Variable     N
#>   <fct>   <fct>    <int>
#> 1 City    Cheddar      1
#> 2 City    Gruyere      3
#> 3 City    Swiss        2
#> 4 City    Colby        1
#> 5 Country Cheddar      3
#> 6 Country Gruyere      1
#> 7 Country Swiss        0
#> 8 Country Colby        4

# Ungrouped Results
check_all(
  data = mouse_cheese_df,
  column_prefix = "Q2",
  free_text_var_suffix = "_TEXT"
 )
#> # A tibble: 4 × 2
#>   Variable     N
#>   <fct>    <int>
#> 1 Cheddar      4
#> 2 Gruyere      4
#> 3 Swiss        2
#> 4 Colby        5
```
