# Function to calculate percentage change from previous observation

Function to calculate percentage change from previous observation

## Usage

``` r
pct_chg(x)
```

## Arguments

- x:

  Numeric vector

## Value

Numeric vector

## Examples

``` r
library(dplyr)
#> 
#> Attaching package: ‘dplyr’
#> The following object is masked from ‘package:asn’:
#> 
#>     select_all
#> The following objects are masked from ‘package:stats’:
#> 
#>     filter, lag
#> The following objects are masked from ‘package:base’:
#> 
#>     intersect, setdiff, setequal, union
x <- 1:5
pct_chg(x)
#> [1] 0.0000000 1.0000000 0.5000000 0.3333333 0.2500000
```
