#' Create a U.S. Tilegrid Choropleth Map in ggplot2 in style of The Economist
#' @import dplyr
#' @import ggplot2
#' @import glue
#' @import patchwork
#' @import grid
#' @param data A data frame, comprising a column with 2-letter USPS state abbreviations and a column with a
#' numeric variable to be visualized in a tilegrid choropleth map.
#' @param data_source Source of the numeric data visualized in the choropleth.
#' @param plot_title Plot title.
#' @param state_column Column containing 2-letter USPS state abbreviations.
#' @param numeric_column Column containing numeric data being visualized in choropleth.
#' @param plot_panel_color Background color for plot.
#' @param palette Vector of hex colors mapping numeric column to choropleth map fill color.
#' @param breaks Numeric vector of breaks corresponding to colors in the color palette mapping to the numeric column.
#' @param zero_color Optional hex color to indicate states with a 0 numeric value.
#' @param na_color Optional hex color to indicate states with missing values.
#'
#' @returns ggplot2 object
#'
#' @export
#' @examples
#' asn_tilegrid(
#'   data = neph_per_100K_df,
#'   data_source = "AMA PPD and U.S. Census Bureau.",
#'   plot_title = "Ratio of Nephrologists per 100K Adult Population",
#'   state_column = "MailState",
#'   numeric_column = neph_per_100k,
#'   plot_panel_color = "#ffffff",
#'   palette = c("#f0f8ff", "#a0bdd8", "#5081b2", "#00468b"),
#'   breaks = c(2.21, 3.1, 4, 5.6),
#'   zero_color = NULL,
#'   na_color = "#EEECE6"
#' )
asn_tilegrid <- function(
  data = df,
  data_source = "Source",
  plot_title = "Plot Title",
  state_column = "state_column_name",
  numeric_column = n,
  plot_panel_color = "#ffffff",
  palette = c("#FCC8B4", "#FAAA90", "#F58469", "#EF1B26"), # Ascending Order
  breaks = c(1, 2, 6, 11), # Ascending Order
  zero_color = NULL,
  na_color = NULL
  ) {

  ## 01 Ensure Palette Length and Breaks Are Same Length ----

  pal <- palette

  pal_length <- length(pal)

  breaks_length <- length(breaks)

  if (pal_length != breaks_length) {
    stop("The palette and break lengths must be the same.")
  }

  if (pal_length > 5) {
    stop("The maximum number of bins and colors is 5.")
  }

  ## 02 Build Tile Grid Choropleth ----

  ## 02.01 If NA ----
  
  if(is.null(zero_color) & !is.null(na_color)) {
    choropleth <-
      grid_df |>
      dplyr::left_join(
        data,
        by = c("State" = {{ state_column }})
      ) |>
      dplyr::mutate(
        fill_color = dplyr::case_when(
          is.na({{ numeric_column }}) ~ na_color,
          dplyr::between({{ numeric_column }}, 0, breaks[1]) ~ pal[1], 
          dplyr::between({{ numeric_column }}, breaks[1], breaks[2]) ~ pal[2],
          dplyr::between({{ numeric_column }}, breaks[2], breaks[3]) ~ pal[3],
          dplyr::between({{ numeric_column }}, breaks[3], breaks[4]) ~ pal[4]
        )
      ) |>
      dplyr::mutate(
        text_color = dplyr::if_else(
          fill_color == pal[4],
          "#ffffff",
          "#000000"
        )
      ) |>
      ggplot2::ggplot(
        ggplot2::aes(
          x = x,
          y = y
        )
      ) +
      ggplot2::geom_tile(
        ggplot2::aes(
          fill = fill_color
        ),
        color = "#000",
        linewidth = 0.2
      ) +
      ggplot2::scale_fill_identity() +
      ggplot2::theme_void() +
      ggplot2::coord_equal() +
      ggplot2::geom_text(
        ggplot2::aes(
          label = State,
          color = text_color
        ),
        family = "Gotham",
        size = 3.4
      ) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(
        caption = glue::glue("Source: {data_source}")
      ) +
      ggplot2::theme(
        plot.caption = ggplot2::element_text(
          hjust = 0.06,
          family = "Gotham",
          color = "#5c5c5c"
        ),
        plot.caption.position = "plot",
        plot.background = ggplot2::element_rect(
          color = plot_panel_color,
          fill = plot_panel_color
        ),
        panel.background = ggplot2::element_rect(
          fill = plot_panel_color,
          color = plot_panel_color
        )
      )
    
  } else if(!is.null(zero_color) & is.null(na_color)) {
    
  ## 02.02 If Zero ----
    
    choropleth <-
      grid_df |>
      dplyr::left_join(
        data,
        by = c("State" = {{ state_column }})
      ) |>
      dplyr::mutate(
        fill_color = dplyr::case_when(
          {{ numeric_column }} == 0 ~ zero_color,
          dplyr::between({{ numeric_column }}, 0.01, breaks[1]) ~ pal[1], 
          dplyr::between({{ numeric_column }}, breaks[1], breaks[2]) ~ pal[2],
          dplyr::between({{ numeric_column }}, breaks[2], breaks[3]) ~ pal[3],
          dplyr::between({{ numeric_column }}, breaks[3], breaks[4]) ~ pal[4]
        )
      ) |>
      dplyr::mutate(
        text_color = dplyr::if_else(
          fill_color == pal[4],
          "#ffffff",
          "#000000"
        )
      ) |>
      ggplot2::ggplot(
        ggplot2::aes(
          x = x,
          y = y
        )
      ) +
      ggplot2::geom_tile(
        ggplot2::aes(
          fill = fill_color
        ),
        color = "#000",
        linewidth = 0.2
      ) +
      ggplot2::scale_fill_identity() +
      ggplot2::theme_void() +
      ggplot2::coord_equal() +
      ggplot2::geom_text(
        ggplot2::aes(
          label = State,
          color = text_color
        ),
        family = "Gotham",
        size = 3.4
      ) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(
        caption = glue::glue("Source: {data_source}")
      ) +
      ggplot2::theme(
        plot.caption = ggplot2::element_text(
          hjust = 0.06,
          family = "Gotham",
          color = "#5c5c5c"
        ),
        plot.caption.position = "plot",
        plot.background = ggplot2::element_rect(
          color = plot_panel_color,
          fill = plot_panel_color
        ),
        panel.background = ggplot2::element_rect(
          fill = plot_panel_color,
          color = plot_panel_color
        )
      )
  
      
  } else if(is.null(na_color) & is.null(zero_color)){
      
  ## 02.03 If Neither NA nor Zero
    
    choropleth <-
      grid_df |>
      dplyr::left_join(
        data,
        by = c("State" = {{ state_column }})
      ) |>
      dplyr::mutate(
        fill_color = dplyr::case_when(
          dplyr::between({{ numeric_column }}, 0, breaks[1]) ~ pal[1], 
          dplyr::between({{ numeric_column }}, breaks[1], breaks[2]) ~ pal[2],
          dplyr::between({{ numeric_column }}, breaks[2], breaks[3]) ~ pal[3],
          dplyr::between({{ numeric_column }}, breaks[3], breaks[4]) ~ pal[4]
        )
      ) |>
      dplyr::mutate(
        text_color = dplyr::if_else(
          fill_color == pal[4],
          "#ffffff",
          "#000000"
        )
      ) |>
      ggplot2::ggplot(
        ggplot2::aes(
          x = x,
          y = y
        )
      ) +
      ggplot2::geom_tile(
        ggplot2::aes(
          fill = fill_color
        ),
        color = "#000",
        linewidth = 0.2
      ) +
      ggplot2::scale_fill_identity() +
      ggplot2::theme_void() +
      ggplot2::coord_equal() +
      ggplot2::geom_text(
        ggplot2::aes(
          label = State,
          color = text_color
        ),
        family = "Gotham",
        size = 3.4
      ) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(
        caption = glue::glue("Source: {data_source}")
      ) +
      ggplot2::theme(
        plot.caption = ggplot2::element_text(
          hjust = 0.06,
          family = "Gotham",
          color = "#5c5c5c"
        ),
        plot.caption.position = "plot",
        plot.background = ggplot2::element_rect(
          color = plot_panel_color,
          fill = plot_panel_color
        ),
        panel.background = ggplot2::element_rect(
          fill = plot_panel_color,
          color = plot_panel_color
        )
      )
  }

  ## 03 Build guide_legend() Scales ----

  scale_df <-
    data.frame(
      x = seq(10, 40, 10),
      y = rep(0.1, 4),
      fill_color = pal
    )

  top_legend <-
    ggplot2::ggplot(
      scale_df,
      ggplot2::aes(
        x = x,
        y = y
      )
    ) +
    ggplot2::geom_tile(
      color = "#000000",
      ggplot2::aes(
        fill = fill_color
      ),
      linewidth = 0.4
    ) +
    ggplot2::scale_fill_identity() +
    ggplot2::theme_void(
      base_family = "Gotham"
    ) +
    ggplot2::scale_x_continuous(
      breaks = seq(
        15,
        45,
        10
      ),
      labels = breaks |>
        as.character()
    ) +
    ggplot2::theme(
      axis.text.x.bottom = ggplot2::element_text(
        vjust = 0.5,
        size = 10
      ),
      plot.background = ggplot2::element_rect(
        color = plot_panel_color,
        fill = plot_panel_color
      ),
      panel.background = ggplot2::element_rect(
        fill = plot_panel_color,
        color = plot_panel_color
      )
    )

  ## 04 Determine if Zero or NA Color Guide Needed

  if(is.null(zero_color) & !is.null(na_color)) {

    zero_na_df <-
      data.frame(
        x = 1,
        y = 0.1,
        fill_color = na_color
      )

    zero_na_legend <-
      ggplot2::ggplot(
        zero_na_df,
        ggplot2::aes(
          x = x,
          y = y
        )
      ) +
      ggplot2::geom_tile(
        color = "#000000",
        ggplot2::aes(
          fill = fill_color
        ),
        linewidth = 0.4
      ) +
      ggplot2::scale_fill_identity() +
      ggplot2::theme_void(
        base_family = "Gotham"
      ) +
      ggplot2::scale_x_continuous(
        breaks = 1,
        labels = "NA"
      ) +
      ggplot2::theme(
        axis.text.x.bottom = ggplot2::element_text(
          vjust = 0.5,
          size = 10
        ),
        plot.background = ggplot2::element_rect(
          color = plot_panel_color,
          fill = plot_panel_color
        ),
        panel.background = ggplot2::element_rect(
          fill = plot_panel_color,
          color = plot_panel_color
        )
      ) +
      ggplot2::coord_fixed(ratio = 1)

  } else if(!is.null(zero_color) & is.null(na_color)) {

    zero_na_df <-
      data.frame(
        x = 1,
        y = 0.1,
        fill_color = zero_color
      )

    zero_na_legend <-
      ggplot2::ggplot(
        zero_na_df,
        ggplot2::aes(
          x = x,
          y = y
        )
      ) +
      ggplot2::geom_tile(
        color = "#000000",
        ggplot2::aes(
          fill = fill_color
        ),
        linewidth = 0.4
      ) +
      ggplot2::scale_fill_identity() +
      ggplot2::theme_void(
        base_family = "Gotham"
      ) +
      ggplot2::scale_x_continuous(
        breaks = 1,
        labels = "0"
      ) +
      ggplot2::theme(
        axis.text.x.bottom = ggplot2::element_text(
          vjust = 0.5,
          size = 10
        ),
        plot.background = ggplot2::element_rect(
          color = plot_panel_color,
          fill = plot_panel_color
        ),
        panel.background = ggplot2::element_rect(
          fill = plot_panel_color,
          color = plot_panel_color
        )
      ) +
      ggplot2::coord_fixed(ratio = 1)
  } 

  zero_na_df <-
    data.frame(
      x = 1,
      y = 0.1,
      fill_color = na_color
    )

  zero_na_legend <-
    ggplot2::ggplot(
      zero_na_df,
      ggplot2::aes(
        x = x,
        y = y
      )
    ) +
    ggplot2::geom_tile(
      color = "#000000",
      ggplot2::aes(
        fill = fill_color
      ),
      linewidth = 0.4
    ) +
    ggplot2::scale_fill_identity() +
    ggplot2::theme_void(
      base_family = "Gotham"
    ) +
    ggplot2::scale_x_continuous(
      breaks = 1,
      labels = "NA"
    ) +
    ggplot2::theme(
      axis.text.x.bottom = ggplot2::element_text(
        vjust = 0.5,
        size = 10
      ),
      plot.background = ggplot2::element_rect(
        color = plot_panel_color,
        fill = plot_panel_color
      ),
      panel.background = ggplot2::element_rect(
        fill = plot_panel_color,
        color = plot_panel_color
      )
    ) +
    ggplot2::coord_fixed(ratio = 1)

  ## 04 Assemble Plot ----

  ## 04.01 No Zero Color or NA Color 

  if (is.null(zero_color) & is.null(na_color)) {
    (
      (
        patchwork::plot_spacer() +
          ggplot2::theme(
            plot.margin = grid::unit(c(0, 0, 0, 30), "pt")
          ) +
          top_legend +
          patchwork::plot_spacer()
      ) +
      patchwork::plot_layout(widths = c(2, 5, 2), nrow = 1)
    ) /
    choropleth +
    patchwork::plot_layout(
      heights = c(0.05, 1)
    ) +
    patchwork::plot_annotation(
      title = plot_title
    ) &
    ggplot2::theme(
      plot.title = ggtext::element_textbox_simple(
        size = 11,
        family = "Gotham",
        hjust = 0.25,
        margin = ggplot2::margin(0, 0, 5, 0, unit = "pt")
      ),
      plot.background = ggplot2::element_rect(
        color = plot_panel_color,
        fill = plot_panel_color
      ),
      panel.background = ggplot2::element_rect(
        fill = plot_panel_color,
        color = plot_panel_color
      )
    )

  } else {
  
  ## 04.02 Add Zero or NA Color Legend 
    
  (
    (
      patchwork::plot_spacer() +
        zero_na_legend +
        ggplot2::theme(
          plot.margin = grid::unit(c(0, 0, 0, 30), "pt")
        ) +
        top_legend +
        patchwork::plot_spacer()
    ) +
    patchwork::plot_layout(widths = c(0.3, 1, 5, 1.4), nrow = 1)
    ) /
    choropleth +
    patchwork::plot_layout(
      heights = c(0.05, 1)
    ) +
    patchwork::plot_annotation(
      title = plot_title
    ) &
    ggplot2::theme(
      plot.title = ggtext::element_textbox_simple(
        size = 11,
        family = "Gotham",
        hjust = 0.25,
        margin = ggplot2::margin(0, 0, 5, 0, unit = "pt")
      ),
      plot.background = ggplot2::element_rect(
        color = plot_panel_color,
        fill = plot_panel_color
      ),
      panel.background = ggplot2::element_rect(
        fill = plot_panel_color,
        color = plot_panel_color
      )
    )
  }  
}
