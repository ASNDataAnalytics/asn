# Grid Data Frame for asn_tilegrid()

Data frame of The Economist's 8 x 11 rectangular tile grid for the
asn_tilegrid() function, adapted from the tilegrid choropleth designed
by The Economist Data Team.

## Usage

``` r
grid_df
```

## Format

A data frame with 6 columns:

1.  `State`: USPS codes for U.S. states and the District of Columbia.

2.  `x`: Corresponding x coordinate for tilegrid.

3.  `y`: Corresponding y coordinate for tilegrid.

## Source

<https://github.com/kpivert/economist_choropleth>

## Examples

``` r
grid_df
#> # A tibble: 51 × 3
#>    State     x     y
#>    <chr> <dbl> <dbl>
#>  1 AL        7     6
#>  2 AK        1    12
#>  3 AZ        2     7
#>  4 AR        5     7
#>  5 CA        1     8
#>  6 CO        3     8
#>  7 CT       10     9
#>  8 DC        9     7
#>  9 DE       10     8
#> 10 FL        9     5
#> # ℹ 41 more rows
```
