abort_bad_argument <- function(arg, must, not = NULL) {

  msg <- glue::glue("`{arg}` must {must}")

  if (!is.null(not)) {

    msg <- glue::glue("{msg}; not {not}")

  }

  rlang::abort(
    "error_bad_argument",
    message = msg,
    arg = arg,
    must = must,
    not = not
  )
}

check_palette <- function(x, name) {

  if (!is.character(x)) {

    abort_bad_argument(name, must = "be a character vector", not = typeof(x))

  }

  if (any(rlang::are_na(x))) {

    abort_bad_argument(name, must = "not contain missing values")

  }

  new_x <- x

  r_colors <- which(new_x %in% grDevices::colors())

  if (length(r_colors) > 0) {

    r_hex <- sapply(x[r_colors], function(.x) {

      r_rgb <- grDevices::col2rgb(.x)

      grDevices::rgb(
        red = r_rgb["red", 1],
        green = r_rgb["green", 1],
        blue = r_rgb["blue", 1],
        maxColorValue = 255
      )
    })

    new_x[r_colors] <- r_hex
  }

  valid_hex <- grepl("^#(?:[0-9a-fA-F]{6,8}){1}$", new_x)

  if (!all(valid_hex)) {

    abort_bad_argument(
      name,
      must = glue::glue("be valid hexadecimal values or from `colors()`.\n",
                        "Problematic values: ",
                        "{paste(x[!valid_hex], collapse = ', ')}")
    )
  }

  if (is.null(names(x))) {

    names(new_x) <- x

  } else {

    missing_nms <- which(names(x) == "")
    names(new_x)[missing_nms] <- x[missing_nms]

  }

  return(new_x)

}

check_pos_int <- function(x, name) {

  if (!is.numeric(x)) {

    abort_bad_argument(name, must = "be numeric", not = typeof(x))

  }

  if (length(x) != 1) {

    abort_bad_argument(name, must = "have length of 1", not = length(x))

  }

  x <- as.integer(x)

  if (is.na(x)) {

    abort_bad_argument(name, must = "be non-missing")

  } else if (x < 0) {

    abort_bad_argument(name, must = "be greater than 0")

  } else {

    x

  }

}

check_real_range <- function(x, name, lb, ub) {
  if (!is.numeric(x)) {
    abort_bad_argument(name, must = "be numeric", not = typeof(x))
  }

  if (length(x) != 1) {
    abort_bad_argument(name, must = "have length of 1", not = length(x))
  }

  if (is.na(x)) {
    abort_bad_argument(name, must = "be non-missing")
  } else if (x < lb || x > ub) {
    abort_bad_argument(name, must = glue::glue("be between {lb} and {ub}"))
  } else {
    x
  }
}

check_exact_abs_int <- function(x, name, value) {
  if (!is.numeric(x)) {
    abort_bad_argument(name, must = "be numeric", not = typeof(x))
  }

  if (length(x) != 1) {
    abort_bad_argument(name, must = "have length of 1", not = length(x))
  }
  x <- as.integer(x)

  if (is.na(x)) {
    abort_bad_argument(name, must = "be non-missing")
  } else if (abs(x) != value) {
    abort_bad_argument(name, must = glue::glue("be {value} or -{value}"))
  } else {
    x
  }
}

check_character <- function(x, name) {
  if (!is.character(x)) {
    abort_bad_argument(name, must = "be character", not = typeof(x))
  }

  if (is.na(x)) {
    abort_bad_argument(name, must = "be non-missing")
  }
  x
}
