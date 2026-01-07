# Use ASN Brand Identity interpolated fill scale

Use ASN Brand Identity interpolated fill scale

## Usage

``` r
scale_fill_asn_ramp(palette = "primary", discrete = TRUE, reverse = FALSE, ...)
```

## Arguments

- palette:

  One of 9 color Schemes using ASN Brand Identity colors ("primary,
  secondary, bw, main_blue, secondary_blue, main_orange,
  highlight_one_of_two, dark_mode, spring")

- discrete:

  Is the variable discrete?

- reverse:

  Should the color orders of the palette be reversed?

- ...:

  Additional arguments to ggplot2::discrete_scale() constructor

## Value

scale_fill_asn_ramp() function

## Examples

``` r
library(ggplot2)
ggplot(
  chickwts,
  aes(
    x = feed,
    y = weight,
    fill = feed
   )
 ) +
 geom_boxplot() +
 scale_fill_asn_ramp(palette = "main_orange")
```
