# Custom `ggplot2` dark theme compliant with ASN's brand identity.

Custom `ggplot2` dark theme compliant with ASN's brand identity.

## Usage

``` r
theme_asn_dark(base_size = 15, title_font = "Gotham", base_font = "Roboto")
```

## Arguments

- base_size:

  Base font size in points (pts)

- title_font:

  Typeface for plot titles, subtitles, and faceted titles. Defaults to
  `Gotham` which is the primary typeface for ASN's brand identity.

- base_font:

  Typeface for other plot text, including axes titles and captions.
  Defaults to `Roboto`.

## Value

A dark-mode version of ASN brand identity-compliant `ggplot2` theme,
built off of
[`theme_minimal()`](https://ggplot2.tidyverse.org/reference/ggtheme.html).

## Examples

``` r
library(ggplot2)

ggplot(
  iris,
  aes(
    x = Sepal.Length,
    y = Sepal.Width,
    color = Species
    )
 ) +
 geom_point() +
 geom_smooth(
   method = "lm"
 ) +
 labs(
   x = "Length",
   y = "Width",
   title = "Relationship Between Iris Length and Width",
   subtitle = "<i>Setosa</i>, <i>Versicolor</i>, & <i>Virginica</i> are positive"
   ) +
 facet_wrap(~ Species) +
 theme_asn_dark(
   title_font = "serif",
   base_font = "sans"
 ) +
 scale_color_asn(palette = "dark_mode")
#> `geom_smooth()` using formula = 'y ~ x'
```
