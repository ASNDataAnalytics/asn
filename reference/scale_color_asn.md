# Create scale_color\_ Palettes for Use in ggplot2 data viz (no interpolation)

Create scale_color\_ Palettes for Use in ggplot2 data viz (no
interpolation)

## Usage

``` r
scale_color_asn(..., palette = "primary")
```

## Arguments

- ...:

  Additional arguments to ggplot2::scale_color_manual()

- palette:

  One of 9 color Schemes using ASN Brand Identity colors

## Value

scale_color_asn() function

## Examples

``` r
library(ggplot2)
#> 
#> Attaching package: ‘ggplot2’
#> The following object is masked from ‘package:asn’:
#> 
#>     get_labs
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
 scale_color_asn(palette = "dark_mode") +
 theme(
   panel.background = element_rect(color = "#000000", fill = "#000000"),
   plot.background = element_rect(color = "#000000", fill = "#000000"),
   panel.grid = element_blank()
   )
#> `geom_smooth()` using formula = 'y ~ x'
```
