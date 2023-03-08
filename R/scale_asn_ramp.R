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

asn_cols <-
  function(...) {
    cols <- c(...)

    if (is.null(cols)) {
      return(asn_colors)
    }

    asn_colors[cols]
}

asn_pal <-
  function(palette = "primary", reverse = FALSE, ...) {
    pal <- asn_palettes[[palette]]

    if (reverse) {
      pal <- rev(pal)
    }

    colorRampPalette(pal, ...)
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
