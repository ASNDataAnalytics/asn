#' ASN Brand Identity for ggplot2 (no interpolation)
#'
#' ASN brand colors and palettes for use with ggplot2.
asn_colors <- c(
  "pantone_287_c" = "#00468b",
  "pantone_151_c" = "#ff8200",
  "pantone_3005_c" = "#0077C8",
  "light_grey" = "#cccccc",
  "pantone_3135_c" = "#008eaa",
  "pantone_7739_c" = "#319b42",
  "dark_grey" = "#555555",
  "pantone_644_c" = "#9bb8d3",
  "pantone_7549_c" = "#ffb500",
  "pantone_669_c" = "#3f2a56",
  "pantone_3262_c" = "#00baae",
  "pantone_11-0601_c" = "#ffffff"
)


#' Return ASN Brand Identity hex colors by position
#' @import ggplot2
#' @param ... Returns all ASN Brand Colors or use an integer 1-12
#'
#' @return A hex color code
#' @export
#'
#' @examples
#' asn_cols()
#' asn_cols(3)
asn_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols)) {
    return(asn_colors)
  }

  asn_colors[cols]
}

#' Primary ASN Brand Colors
#'
#' @return Primary ASN Brand Colors
#' @export
asn_primary <- function() {
  # Primary ASN Brand Colors
  asn_cols(1, 2, 5, 6)
}

#' Secondary ASN Brand Colors
#'
#' @return Secondary ASN Brand Colors
#' @export
asn_secondary <- function() {
  # Secondary ASN Brand Colors
  asn_cols(10, 9, 3, 8, 11)
}

#' ASN Brand Grays
#'
#' @return Greyscale Palette
#' @export
asn_bw <- function() {
  # Grays
  asn_cols(4, 7)
}

#' White and Main Blue for sequential palette
#'
#' @return White and Main Blue for sequential palette
#' @export
asn_main_blue <- function() {
  # White and Main Blue for sequential palette
  asn_cols(12, 1)
}

#' White and Secondary Blue for sequential palette
#'
#' @return White and Secondary Blue for sequential palette
#' @export
asn_secondary_blue <- function() {
  # White and Secondary Blue for sequential palette
  asn_cols(12, 3)
}

#' White and Orange for sequential palette
#'
#' @return White and Orange for sequential palette
#' @export
asn_main_orange <- function() {
  # White and Orange for sequential palette
  asn_cols(12, 2)
}

#' Orange and Grey
#'
#' @return Orange and Grey
#' @export
asn_highlight_one_of_two <- function() {
  # Orange and Grey
  asn_cols(2, 4)
}

#' Light/Neon Colors for Black Background
#'
#' @return Light/Neon Colors for Black Background
#' @export
asn_dark_mode <- function() {
  # Light/Neon Colors for Black Background
  asn_cols(2, 6, 9, 3)
}

#' Springy colors
#'
#' @return Springy colors
#' @export
asn_spring <- function() {
  # Blue/Green/yellow
  asn_cols(3, 6, 9)
}

#' Create scale_color_ Palettes for Use in ggplot2 data viz (no interpolation)
#'
#' @param ... Additional arguments to ggplot2::scale_color_manual()
#' @param palette One of 9 color Schemes using ASN Brand Identity colors
#'
#' @return scale_color_asn() function
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(
#'   iris,
#'   aes(
#'     x = Sepal.Length,
#'     y = Petal.Length,
#'     color = Species
#'    )
#'  ) +
#'  geom_point() +
#'  geom_smooth(
#'    method = "lm",
#'    se = FALSE
#'  ) +
#'  scale_color_asn(palette = "dark_mode") +
#'  theme(
#'    panel.background = element_rect(color = "#000000", fill = "#000000"),
#'    plot.background = element_rect(color = "#000000", fill = "#000000"),
#'    panel.grid = element_blank()
#'    )
scale_color_asn <- function(..., palette = "primary") {

  pal <- switch(palette,
                "primary" = unname(asn_primary()) |> rep(100),
                "secondary" = unname(asn_secondary()) |> rep(100),
                "bw" = unname(asn_bw()) |> rep(100),
                "main_blue" = unname(asn_main_blue()) |> rep(100),
                "secondary_blue" = unname(asn_secondary_blue()) |> rep(100),
                "main_orange" = unname(asn_main_orange()) |> rep(100),
                "highlight_one_of_two" = unname(asn_highlight_one_of_two()) |> rep(100),
                "dark_mode" = unname(asn_dark_mode()) |> rep(100),
                "spring" = unname(asn_spring()) |> rep(100)
  )

  ggplot2::scale_color_manual(values = pal)
}

#' Create scale_fill_ Palettes for Use in ggplot2 data viz (no interpolation)
#'
#' @param ... Additional arguments to ggplot2::scale_fill_manual()
#' @param palette One of 9 color Schemes using ASN Brand Identity colors
#'
#' @return scale_fill_asn() function
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(
#'   chickwts,
#'   aes(
#'     x = feed,
#'     y = weight,
#'     fill = feed
#'    )
#'  ) +
#'  geom_boxplot() +
#'  scale_fill_asn(palette = "secondary")
scale_fill_asn <- function(..., palette = "primary") {

  pal <- switch(palette,
                "primary" = unname(asn_primary()) |> rep(100),
                "secondary" = unname(asn_secondary()) |> rep(100),
                "bw" = unname(asn_bw()) |> rep(100),
                "main_blue" = unname(asn_main_blue()) |> rep(100),
                "secondary_blue" = unname(asn_secondary_blue()) |> rep(100),
                "main_orange" = unname(asn_main_orange()) |> rep(100),
                "highlight_one_of_two" = unname(asn_highlight_one_of_two()) |> rep(100),
                "dark_mode" = unname(asn_dark_mode()) |> rep(100),
                "spring" = unname(asn_spring()) |> rep(100)
  )

  ggplot2::scale_fill_manual(values = pal)
}

