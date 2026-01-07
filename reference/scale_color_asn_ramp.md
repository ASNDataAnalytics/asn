# Use ASN Brand Identity interpolated color scale

Use ASN Brand Identity interpolated color scale

## Usage

``` r
scale_color_asn_ramp(
  palette = "primary",
  discrete = TRUE,
  reverse = FALSE,
  ...
)
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

scale_color_asn_ramp() function

## Examples

``` r
library(ggplot2)
ggplot(
  iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
   )
 ) +
 geom_point() +
 geom_smooth(
   method = "lm",
   se = FALSE
 ) +
 scale_color_asn_ramp()
#> `geom_smooth()` using formula = 'y ~ x'
```
