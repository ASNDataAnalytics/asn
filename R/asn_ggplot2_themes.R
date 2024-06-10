#' Custom `ggplot2` theme compliant with ASN's brand identity.
#'
#' @param base_size Base font size in points (pts)
#' @param title_font Typeface for plot titles, subtitles, and faceted titles.
#' Defaults to `Gotham` which is the primary typeface for ASN's brand identity.
#' @param base_font Typeface for other plot text, including axes titles and captions.
#' Defaults to `Roboto`.
#'
#' @return An ASN brand identity-compliant `ggplot2` theme, built off of `theme_minimal()`.
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(
#'   iris,
#'   aes(
#'     x = Sepal.Length,
#'     y = Sepal.Width,
#'     color = Species
#'     )
#'   ) +
#'   geom_point() +
#'   geom_smooth(
#'     method = "lm"
#'    ) +
#'   labs(
#'     x = "Length",
#'     y = "Width",
#'     title = "Relationship Between Iris Length and Width",
#'     subtitle = "<i>Setosa</i>, <i>Versicolor</i>, & <i>Virginica</i> are positive"
#'   ) +
#'   facet_wrap(~ Species) +
#'   theme_asn(
#'     title_font = "serif",
#'     base_font = "sans"
#'    )
theme_asn <- function(
    base_size = 15,
    title_font = "Gotham",
    base_font = "Roboto"
) {

  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_font
  ) %+replace%
    ggplot2::theme(
      text = ggplot2::element_text(family = base_font, size = base_size),
      plot.title = ggtext::element_textbox_simple(
        family = title_font,
        size = ggplot2::rel(1.3),
        lineheight = 1.2,
        margin = ggplot2::margin(0.5, 0, 1, 0, "lines"),
        hjust = 0
      ),
      plot.subtitle = ggtext::element_textbox_simple(
        family = title_font,
        size = ggplot2::rel(1.1),
        lineheight = 1.1,
        margin = ggplot2::margin(0, 0, 1, 0, "lines"),
        hjust = 0
      ),
      strip.text = ggtext::element_textbox_simple(
        family = title_font,
        size = ggplot2::rel(1.1),
        face = "bold",
        padding = grid::unit(5, "pt"),
        halign = 0.5,
        margin = ggplot2::margin(0.5, 0, 0.5, 0, "lines"),
        linetype = 1,
        r = grid::unit(7, "pt")
      ),
      strip.background = ggplot2::element_blank(),
      plot.title.position = "plot",
      panel.grid.minor = ggplot2::element_blank(),
      axis.title = ggplot2::element_text(
        face = "bold",
        size = ggplot2::rel(1.1)
      ),
      axis.ticks = ggplot2::element_blank(),
      legend.position = "bottom",
      legend.key = ggplot2::element_rect(fill = "transparent", color = NA)
    )
}

#' Custom `ggplot2` dark theme compliant with ASN's brand identity.
#'
#' @param base_size Base font size in points (pts)
#' @param title_font Typeface for plot titles, subtitles, and faceted titles.
#' Defaults to `Gotham` which is the primary typeface for ASN's brand identity.
#' @param base_font Typeface for other plot text, including axes titles and captions.
#' Defaults to `Roboto`.
#'
#' @return A dark-mode version of ASN brand identity-compliant `ggplot2` theme, built off of `theme_minimal()`.
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(
#'   iris,
#'   aes(
#'     x = Sepal.Length,
#'     y = Sepal.Width,
#'     color = Species
#'     )
#'  ) +
#'  geom_point() +
#'  geom_smooth(
#'    method = "lm"
#'  ) +
#'  labs(
#'    x = "Length",
#'    y = "Width",
#'    title = "Relationship Between Iris Length and Width",
#'    subtitle = "<i>Setosa</i>, <i>Versicolor</i>, & <i>Virginica</i> are positive"
#'    ) +
#'  facet_wrap(~ Species) +
#'  theme_asn_dark(
#'    title_font = "serif",
#'    base_font = "sans"
#'  ) +
#'  scale_color_asn(palette = "dark_mode")
theme_asn_dark <- function(
    base_size = 15,
    title_font = "Gotham",
    base_font = "Roboto"
) {

  theme_asn(
    base_size = base_size,
    title_font = title_font,
    base_font = base_font
  ) %+replace%
    ggplot2::theme(
      text = ggplot2::element_text(
        family = base_font,
        size = base_size,
        color = "#ffffff"
      ),
      plot.title = ggtext::element_textbox_simple(
        family = title_font,
        size = ggplot2::rel(1.3),
        lineheight = 1.2,
        margin = ggplot2::margin(0.5, 0, 1, 0, "lines"),
        hjust = 0,
        color = "#ffffff"
      ),
      plot.subtitle = ggtext::element_textbox_simple(
        family = title_font,
        size = ggplot2::rel(1.1),
        lineheight = 1.1,
        margin = ggplot2::margin(0, 0, 1, 0, "lines"),
        hjust = 0,
        color = "#ffffff"
      ),
      strip.text = ggtext::element_textbox_simple(
        family = title_font,
        size = ggplot2::rel(1.1),
        face = "bold",
        padding = grid::unit(5, "pt"),
        halign = 0.5,
        margin = ggplot2::margin(0.5, 0, 0.5, 0, "lines"),
        linetype = 1,
        r = grid::unit(7, "pt"),
        color = "#ffffff",
        box.color = "#ffffff"
      ),
      strip.background = ggplot2::element_blank(),
      plot.title.position = "plot",
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(
        color = "#ffffff",
        linewidth = ggplot2::rel(1/3)
      ),
      axis.title = ggplot2::element_text(face = "bold", size = rel(1.1)),
      axis.ticks = ggplot2::element_blank(),
      legend.position = "bottom",
      panel.background = ggplot2::element_rect(fill = "#000000", color = NA),
      plot.background = ggplot2::element_rect(fill = "#000000", color = NA),
      legend.background = ggplot2::element_rect(fill = "#000000")
    )
}
