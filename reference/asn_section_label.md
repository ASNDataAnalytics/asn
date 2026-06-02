# Create a consistent-width section label

Creates a custom commented section label for outlining sections in your
script that is copied to the clipboard for pasting in R code and
Typst/Quarto documents.

## Usage

``` r
asn_section_label(label = "00 Libraries", typst = FALSE)
```

## Arguments

- label:

  The section name, typically prefixed with section number.

- typst:

  Logical. Changes the comment character for section labels in a Typst
  document. Default FALSE.

## Value

A character string of the section label, invisibly. Also copied to the
clipboard in interactive sessions.

## Examples

``` r
if (FALSE) { # \dontrun{
  asn_section_label("01 Data")
} # }
```
