# Create scale_fill\_ Palettes for Use in ggplot2 data viz (no interpolation)

Create scale_fill\_ Palettes for Use in ggplot2 data viz (no
interpolation)

## Usage

``` r
scale_fill_asn(..., palette = "primary")
```

## Arguments

- ...:

  Additional arguments to ggplot2::scale_fill_manual()

- palette:

  One of 9 color Schemes using ASN Brand Identity colors

## Value

scale_fill_asn() function

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
 scale_fill_asn(palette = "secondary")
```
