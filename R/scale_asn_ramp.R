#' ASN Brand Identity with Interpolation for ggplot2
#'
#' ASN brand colors and palettes for use with ggplot2.
asn_colors <-
  c(
    "#00468b",
    "#ff8200",
    "#0077C8",
    "#cccccc",
    "#008eaa",
    "#319b42",
    "#555555",
    "#9bb8d3",
    "#ffb500",
    "#3f2a56",
    "#00baae",
    "#ffffff"
  )
#'
#' Return ASN Brand Identity hex colors by position
#' @import ggplot2
#' @param ... Returns all ASN Brand Colors or use an integer 1-12
#'
#' @return A hex color code
#' @export
#'
#' @examples
#' asn_cols()
#' asn_cols(1)
asn_cols <-
  function(...) {
    cols <- c(...)

    if (is.null(cols)) {
      return(asn_colors)
    }

    asn_colors[cols]
}


asn_palettes <-
  list(
    primary = asn_cols(1, 2, 5, 6),
    secondary = asn_cols(10, 9, 3, 8, 11),
    bw = asn_cols(4, 7),
    main_blue = asn_cols(12, 1),
    secondary_blue = asn_cols(12, 3),
    main_orange = asn_cols(12, 2),
    highlight_one_of_two = asn_cols(2, 4),
    dark_mode = asn_cols(2, 6, 9, 3),
    spring = asn_cols(3, 6, 9)
  )
#' Create Palettes for Use in ggplot2 data viz with interpolation
#'
#' @importFrom grDevices colorRampPalette
#' @param palette One of 9 color Schemes using ASN Brand Identity colors
#' @param reverse Should the color orders of the palette be reversed?
#' @param ... Additional arguments to colorRampPalette
#'
#' @return A function to interpolate between the two outer values in the color scheme
#' @export
#'
#' @examples
#' asn_pal()
asn_pal <-
  function(palette = "primary", reverse = FALSE, ...) {
    pal <- asn_palettes[[palette]]

    if (reverse) {
      pal <- rev(pal)
    }

    colorRampPalette(pal, ...)
  }


#' Use ASN Brand Identity interpolated color scale
#'
#' @param palette One of 9 color Schemes using ASN Brand Identity colors ("primary, secondary, bw, main_blue, secondary_blue, main_orange, highlight_one_of_two, dark_mode, spring")
#' @param discrete Is the variable discrete?
#' @param reverse  Should the color orders of the palette be reversed?
#' @param ... Additional arguments to ggplot2::discrete_scale() constructor
#'
#' @return scale_color_asn_ramp() function
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
#'  scale_color_asn_ramp()
scale_color_asn_ramp <-
  function(palette = "primary", discrete = TRUE, reverse = FALSE, ...) {
    pal <-
      asn_pal(
        palette = palette,
        reverse = reverse
      )

    if (discrete) {
      ggplot2::discrete_scale(
        aesthetics = "color",
        scale_name = paste0("asn_", palette),
        palette = pal,
        ...
      )
    } else {
      ggplot2::scale_color_gradientn(
        colors = pal(256),
        ...
      )
    }
  }


#' Use ASN Brand Identity interpolated fill scale
#'
#' @param palette One of 9 color Schemes using ASN Brand Identity colors ("primary, secondary, bw, main_blue, secondary_blue, main_orange, highlight_one_of_two, dark_mode, spring")
#' @param discrete Is the variable discrete?
#' @param reverse Should the color orders of the palette be reversed?
#' @param ... Additional arguments to ggplot2::discrete_scale() constructor
#'
#' @return scale_fill_asn_ramp() function
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
#'  scale_fill_asn_ramp(palette = "main_orange")
scale_fill_asn_ramp <-
  function(palette = "primary", discrete = TRUE, reverse = FALSE, ...) {
    pal <-
      asn_pal(
        palette = palette,
        reverse = reverse
      )

    if (discrete) {
      ggplot2::discrete_scale(
        aesthetics = "fill",
        scale_name = paste0("asn_", palette),
        palette = pal,
        ...
      )
    } else {
      ggplot2::scale_fill_gradientn(
        colors = pal(256),
        ...
      )
    }
  }
