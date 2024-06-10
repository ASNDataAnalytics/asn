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
