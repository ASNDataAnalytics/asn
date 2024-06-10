color_palette <- function(
    pal = character(),
    n = length(pal)
) {

  pal <- check_palette(pal, name = "pal")

  pal <- vctrs::vec_cast(pal, character())

  n <- check_pos_int(n, name = "n")

  new_color_palette(pal = pal, n = n)

}

new_color_palette <- function(
    pal = character(),
    n = length(pal)
) {

  vctrs::vec_assert(pal, ptype = character())

  vctrs::vec_assert(n, ptype = integer(), size = 1)

  out <- if (length(pal) == 0) {

    pal

  } else if (n > length(pal)) {

    grDevices::colorRampPalette(pal)(n)

  } else {

    pal[as.integer(seq(1, length(pal), length.out = n))]

  }

  nms <- if (is.null(names(out))) out else names(out)

  vctrs::new_vctr(
    out,
    n_colors = n,
    names = nms,
    class = "asn_color_palette",
    inherit_base_type = TRUE
  )
}

n_colors <- function(x) attr(x, "n_colors")

#' @importFrom methods setOldClass
methods::setOldClass(c("asn_color_palette", "vctrs_vctr"))

is_color_palette <- function(pal) {
  inherits(pal, "asn_color_palette")
}

vec_ptype_abbr.asn_color_palette <- function(x, ...) {
  "clpal"
}

vec_ptype_full.asn_color_palette <- function(x, ...) {
  paste0("color_palette")
}

obj_print_data.asn_color_palette <- function(x, ...) {
  UseMethod("obj_print_data.asn_color_palette", x)
}

#' @export
obj_print_data.asn_color_palette.default <- function(x, ...) {

  styles <- lapply(x, crayon::make_style, bg = TRUE)

  invisible(
    mapply(
      function(.x, .y) {
        cat("", .y("  "), .x, "\n")
        return(invisible(.x))
      },
      vctrs::vec_names(x), styles,
      USE.NAMES = FALSE
    )
  )
}

vec_ptype2.asn_color_palette.asn_color_palette <- function(x, y, ...) {

  new_color_palette(
    pal = c(vctrs::vec_data(x), vctrs::vec_data(y)),
    n = sum(n_colors(x), n_colors(y))
  )

}

vec_ptype2.asn_color_palette.character <- function(x, y, ...) character()


vec_ptype2.character.asn_color_palette <- function(x, y, ...) character()


vec_cast.asn_color_palette.asn_color_palette <- function(x, to, ...) {

  new_color_palette(
    vctrs::vec_data(x),
    n = n_colors(x)
  )
}

vec_cast.asn_color_palette.character <- function(x, to, ...) {

  new_color_palette(x, n = length(x))

}

vec_cast.character.asn_color_palette <- function(x, to, ...) vctrs::vec_data(x)

asn_brand_palettes <-
  lapply(
    list(
      asn_brand_bw = c(
        "light_grey" = "#cccccc",
        "dark_grey" = "#555555"),
      asn_brand_dark_mode = c(
        "pantone_151_c" = "#ff8200",
        "pantone_7739_c" = "#319b42",
        "pantone_7549_c" = "#ffb500",
        "pantone_3005_c" = "#0077C8"),
      asn_brand_highlight_one = c(
        "pantone_151_c" = "#ff8200",
        "light_grey" = "#cccccc"),
      asn_brand_main_blue = c(
        "pantone_11-0601_c" = "#ffffff",
        "pantone_287_c" = "#00468b"),
      asn_brand_secondary_blue = c(
        "pantone_11-0601_c" = "#ffffff",
        "pantone_3005_c" = "#0077C8"),
      asn_brand_main_orange = c(
        "pantone_11-0601_c" = "#ffffff",
        "pantone_151_c" = "#ff8200"),
      asn_brand_primary = c(
        "pantone_287_c" = "#00468b",
        "pantone_151_c" = "#ff8200",
        "pantone_3135_c" = "#008eaa",
        "pantone_7739_c" = "#319b42"),
      asn_brand_secondary = c(
        "pantone_669_c" = "#3f2a56",
        "pantone_7549_c" = "#ffb500",
        "pantone_3005_c" = "#0077C8",
        "pantone_644_c" = "#9bb8d3",
        "pantone_3262_c" = "#00baae")
    ),
    FUN = color_palette
  )

asn_brand_col <-
  function(
    n,
    alpha = 1,
    begin = 0,
    end = 1,
    direction = 1,
    asn_brand_palette = "asn_brand_primary"
  ) {

    if (direction == -1) {
      tmp <- begin
      begin <- end
      end <- tmp
    }

    asn_brand_pal <- asn_brand_palette

    option <- switch(
      EXPR = asn_brand_pal,
      asn_brand_bw = asn_brand_palettes[['asn_brand_bw']],
      asn_brand_dark_mode = asn_brand_palettes[['asn_brand_dark_mode']],
      asn_brand_highlight_one = asn_brand_palettes[['asn_brand_highlight_one']],
      asn_brand_main_blue = asn_brand_palettes[['asn_brand_main_blue']],
      asn_brand_secondary_blue = asn_brand_palettes[['asn_brand_secondary_blue']],
      asn_brand_main_orange = asn_brand_palettes[['asn_brand_main_orange']],
      asn_brand_primary = asn_brand_palettes[['asn_brand_primary']],
      asn_brand_secondary = asn_brand_palettes[['asn_brand_secondary']], {
        rlang::warn(
          paste0(
            "ASN Brand Identity Palette '",
            asn_brand_palette,
            "' does not exist. ",
            "Defaulting to 'ASN Primary Palette.'")
        )
        asn_brand_palettes[['asn_brand_primary']]

      })

    fn_cols <-
      grDevices::colorRamp(
        option,
        space = "Lab",
        interpolate = "spline"
      )

    cols <-
      fn_cols(
        seq(begin, end, length.out = n)
      ) / 255

    grDevices::rgb(
      cols[ , 1],
      cols[ , 2],
      cols[ , 3],
      alpha = alpha
    )
  }


asn_brand_pal <-
  function(
    alpha = 1,
    begin = 0,
    end = 1,
    direction = 1,
    asn_brand_palette = "asn_brand_primary"
  ) {

    function(n) {
      asn_brand_col(
        n,
        alpha = alpha,
        begin = begin,
        end = end,
        direction = direction,
        asn_brand_palette = asn_brand_palette
      )
    }

  }

