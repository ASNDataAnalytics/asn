# Create Palettes for Use in ggplot2 data viz with interpolation

Create Palettes for Use in ggplot2 data viz with interpolation

## Usage

``` r
asn_pal(palette = "primary", reverse = FALSE, ...)
```

## Arguments

- palette:

  One of 9 color Schemes using ASN Brand Identity colors

- reverse:

  Should the color orders of the palette be reversed?

- ...:

  Additional arguments to colorRampPalette

## Value

A function to interpolate between the two outer values in the color
scheme

## Examples

``` r
asn_pal()
#> function (n) 
#> {
#>     x <- ramp(seq.int(0, 1, length.out = n))
#>     if (ncol(x) == 4L) 
#>         rgb(x[, 1L], x[, 2L], x[, 3L], x[, 4L], maxColorValue = 255)
#>     else rgb(x[, 1L], x[, 2L], x[, 3L], maxColorValue = 255)
#> }
#> <bytecode: 0x55f428f95770>
#> <environment: 0x55f428f98458>
```
