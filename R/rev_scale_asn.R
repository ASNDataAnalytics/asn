scale_color_asn_c <-
  function(
    ..., alpha = 1, begin = 0, end = 1, direction = 1,
    asn_brand_palette = "asn_brand_primary", values = NULL,
    space = "Lab", na.value = "grey90", guide = "colorbar",
    aesthetics = "color"
  ) {

    ggplot2::continuous_scale(
      aesthetics = aesthetics,
      scales::gradient_n_pal(
        asn_brand_pal(alpha, begin, end, direction, asn_brand_palette)(6),
        values = values,
        space = space
      ),
      na.value = na.value,
      guide = guide,
      ...
    )
  }

scale_color_asn_d <-
  function(
    ..., alpha = 1, begin = 0, end = 1, direction = 1,
    asn_brand_palette = "asn_brand_primary",
    aesthetics = "color"
  ) {

    ggplot2::discrete_scale(
      aesthetics = aesthetics,
      palette = asn_brand_pal(alpha, begin, end, direction, asn_brand_palette),
      ...
    )
  }

scale_color_asn_b <-
  function(
    ..., alpha = 1, begin = 0, end = 1, direction = 1,
    asn_brand_palette = "asn_brand_primary", values = NULL,
    space = "Lab", na.value = "grey90", guide = "colorsteps",
    aesthetics = "color"
  ) {

    ggplot2::binned_scale(
      aesthetics,
      palette = scales::gradient_n_pal(
        asn_brand_pal(alpha, begin, end, direction, asn_brand_palette)(6),
        values = values,
        space = space
      ),
      na.value = na.value,
      guide = guide,
      ...
    )
  }

scale_fill_asn_c <-
  function(
    ..., alpha = 1, begin = 0, end = 1, direction = 1,
    asn_brand_palette = "asn_brand_primary", values = NULL,
    space = "Lab", na.value = "grey90", guide = "colorbar",
    aesthetics = "fill"
  ) {

    ggplot2::continuous_scale(
      aesthetics = aesthetics,
      palette = scales::gradient_n_pal(
        asn_brand_pal(alpha, begin, end, direction, asn_brand_palette)(6),
        values = values,
        space = space
      ),
      na.value = na.value,
      guide = guide,
      ...
    )
  }

scale_fill_asn_d <-
  function(
    ..., alpha = 1, begin = 0, end = 1, direction = 1,
    asn_brand_palette = "asn_brand_primary",
    aesthetics = "fill"
  ) {

    ggplot2::discrete_scale(
      aesthetics = aesthetics,
      palette = asn_brand_pal(alpha, begin, end, direction, asn_brand_palette),
      ...
    )
  }

scale_fill_asn_b <-
  function(
    ..., alpha = 1, begin = 0, end = 1, direction = 1,
    asn_brand_palette = "asn_brand_primary", values = NULL,
    space = "Lab", na.value = "grey90", guide = "colorsteps",
    aesthetics = "fill"
  ) {

    ggplot2::binned_scale(
      aesthetics = aesthetics,
      palette = scales::gradient_n_pal(
        asn_brand_pal(alpha, begin, end, direction, asn_brand_palette)(6),
        values = values,
        space = space
      ),
      na.value = na.value,
      guide = guide,
      ...
    )
  }
