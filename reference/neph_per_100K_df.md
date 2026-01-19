# Nephrologists per 100K U.S. Population by State

Ratio of practicing nephrologists per 100K adult population per state
and District of Columbia in 2023. Nephrologist counts aggregated from
the American Medical Assosciation Physician Professional Database. U.S.
adult population extracted from the U.S. Census Bureau.

## Usage

``` r
neph_per_100K_df
```

## Format

A data frame with 2 columns:

1.  `MailState`: USPS codes for U.S. states and the District of
    Columbia.

2.  `neph_per_100k`: Ratio of practicing nephrologists per 100K adult
    population in state/DC.

## Source

<https://www.census.gov/data/datasets/time-series/demo/popest/2020s-counties-detail.html>

## Examples

``` r
neph_per_100K_df
#> # A tibble: 51 × 2
#>    MailState neph_per_100k
#>    <chr>             <dbl>
#>  1 ND                 2.66
#>  2 VT                 2.62
#>  3 OK                 2.04
#>  4 MI                 2.82
#>  5 NM                 2.64
#>  6 IA                 1.58
#>  7 AZ                 2.94
#>  8 WV                 2.77
#>  9 WI                 2.36
#> 10 NV                 2.86
#> # ℹ 41 more rows
```
