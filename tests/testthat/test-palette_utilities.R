# Tests for internal palette_utilities.R helpers

# ── color_palette() ──────────────────────────────────────────────────────────

test_that("color_palette() returns an asn_color_palette object", {
  result <- asn:::color_palette(c("#00468b", "#ff8200"))
  expect_s3_class(result, "asn_color_palette")
})

test_that("color_palette() interpolates when n > length(pal)", {
  result <- asn:::color_palette(c("#00468b", "#ff8200"), n = 10)
  expect_length(result, 10)
})

test_that("color_palette() subsets when n < length(pal)", {
  result <- asn:::color_palette(c("#00468b", "#ff8200", "#0077C8"), n = 2)
  expect_length(result, 2)
})

test_that("color_palette() names colors from values when unnamed", {
  result <- asn:::color_palette(c("#00468b", "#ff8200"))
  expect_false(is.null(names(result)))
})

test_that("color_palette() returns empty palette for empty input", {
  result <- asn:::color_palette(character(0))
  expect_s3_class(result, "asn_color_palette")
  expect_length(result, 0)
})

# ── check_palette() ───────────────────────────────────────────────────────────

test_that("check_palette() errors on non-character input", {
  expect_error(
    asn:::check_palette(123, "pal"),
    class = "error_bad_argument"
  )
})

test_that("check_palette() errors on NA values", {
  expect_error(
    asn:::check_palette(c("#00468b", NA), "pal"),
    class = "error_bad_argument"
  )
})

test_that("check_palette() errors on invalid hex values", {
  expect_error(
    asn:::check_palette(c("notacolor"), "pal"),
    class = "error_bad_argument"
  )
})

test_that("check_palette() accepts valid named R colors and converts to hex", {
  result <- asn:::check_palette("red", "pal")
  expect_true(grepl("^#[0-9A-Fa-f]{6}$", result))
})

test_that("check_palette() accepts valid hex strings", {
  result <- asn:::check_palette(c("#00468b", "#ff8200"), "pal")
  expect_equal(unname(result), c("#00468b", "#ff8200"))
})

test_that("check_palette() handles partially named input (fills missing names)", {
  input <- c(blue = "#00468b", "#ff8200")
  result <- asn:::check_palette(input, "pal")
  expect_equal(names(result)[2], "#ff8200")
})

test_that("check_palette() handles fully named input unchanged", {
  input <- c(blue = "#00468b", orange = "#ff8200")
  result <- asn:::check_palette(input, "pal")
  expect_equal(names(result), c("blue", "orange"))
})

# ── check_pos_int() ───────────────────────────────────────────────────────────

test_that("check_pos_int() errors on non-numeric input", {
  expect_error(asn:::check_pos_int("a", "n"), class = "error_bad_argument")
})

test_that("check_pos_int() errors on length > 1", {
  expect_error(asn:::check_pos_int(c(1, 2), "n"), class = "error_bad_argument")
})

test_that("check_pos_int() errors on negative value", {
  expect_error(asn:::check_pos_int(-1, "n"), class = "error_bad_argument")
})

test_that("check_pos_int() returns integer for valid input", {
  expect_equal(asn:::check_pos_int(3, "n"), 3L)
})

test_that("check_pos_int() coerces numeric to integer", {
  expect_type(asn:::check_pos_int(3.0, "n"), "integer")
})

# ── check_real_range() ────────────────────────────────────────────────────────

test_that("check_real_range() errors on non-numeric", {
  expect_error(
    asn:::check_real_range("a", "x", 0, 1),
    class = "error_bad_argument"
  )
})

test_that("check_real_range() errors on length > 1", {
  expect_error(
    asn:::check_real_range(c(0.1, 0.5), "x", 0, 1),
    class = "error_bad_argument"
  )
})

test_that("check_real_range() errors on NA", {
  expect_error(
    asn:::check_real_range(NA_real_, "x", 0, 1),
    class = "error_bad_argument"
  )
})

test_that("check_real_range() errors when out of bounds", {
  expect_error(
    asn:::check_real_range(2, "x", 0, 1),
    class = "error_bad_argument"
  )
})

test_that("check_real_range() returns value when in range", {
  expect_equal(asn:::check_real_range(0.5, "x", 0, 1), 0.5)
})

test_that("check_real_range() accepts boundary values", {
  expect_equal(asn:::check_real_range(0, "x", 0, 1), 0)
  expect_equal(asn:::check_real_range(1, "x", 0, 1), 1)
})

# ── check_exact_abs_int() ─────────────────────────────────────────────────────

test_that("check_exact_abs_int() errors on non-numeric", {
  expect_error(
    asn:::check_exact_abs_int("a", "x", 1),
    class = "error_bad_argument"
  )
})

test_that("check_exact_abs_int() errors on length > 1", {
  expect_error(
    asn:::check_exact_abs_int(c(1, -1), "x", 1),
    class = "error_bad_argument"
  )
})

test_that("check_exact_abs_int() errors on NA", {
  expect_error(
    asn:::check_exact_abs_int(NA_real_, "x", 1),
    class = "error_bad_argument"
  )
})

test_that("check_exact_abs_int() errors when abs value doesn't match", {
  expect_error(
    asn:::check_exact_abs_int(2, "x", 1),
    class = "error_bad_argument"
  )
})

test_that("check_exact_abs_int() accepts -value", {
  expect_equal(asn:::check_exact_abs_int(-1, "x", 1), -1L)
})

test_that("check_exact_abs_int() accepts +value", {
  expect_equal(asn:::check_exact_abs_int(1, "x", 1), 1L)
})

# ── check_character() ─────────────────────────────────────────────────────────

test_that("check_character() errors on non-character", {
  expect_error(asn:::check_character(123, "x"), class = "error_bad_argument")
})

test_that("check_character() errors on NA", {
  expect_error(
    asn:::check_character(NA_character_, "x"),
    class = "error_bad_argument"
  )
})

test_that("check_character() returns value for valid input", {
  expect_equal(asn:::check_character("hello", "x"), "hello")
})

# ── abort_bad_argument() ─────────────────────────────────────────────────────

test_that("abort_bad_argument() throws error_bad_argument with message", {
  expect_error(
    asn:::abort_bad_argument("myarg", must = "be numeric"),
    class = "error_bad_argument"
  )
})

test_that("abort_bad_argument() includes 'not' in message when provided", {
  err <- tryCatch(
    asn:::abort_bad_argument("myarg", must = "be numeric", not = "character"),
    error = function(e) e
  )
  expect_true(grepl("not character", conditionMessage(err)))
})

# ── asn_brand_palettes object ─────────────────────────────────────────────────

test_that("asn_brand_palettes is a named list", {
  expect_type(asn:::asn_brand_palettes, "list")
  expect_true(length(asn:::asn_brand_palettes) > 0)
})

test_that("asn_brand_palettes contains expected palette names", {
  expected <- c("asn_brand_primary", "asn_brand_secondary", "asn_brand_bw")
  expect_true(all(expected %in% names(asn:::asn_brand_palettes)))
})

test_that("each palette in asn_brand_palettes is an asn_color_palette", {
  for (nm in names(asn:::asn_brand_palettes)) {
    expect_s3_class(
      asn:::asn_brand_palettes[[nm]],
      "asn_color_palette"
    )
  }
})

# ── asn_brand_col() ───────────────────────────────────────────────────────────

test_that("asn_brand_col() returns n hex color strings", {
  result <- asn:::asn_brand_col(5)
  expect_length(result, 5)
  expect_true(all(grepl("^#[0-9A-Fa-f]{6,8}$", result)))
})

test_that("asn_brand_col() direction = -1 reverses begin/end", {
  fwd <- asn:::asn_brand_col(5, direction = 1)
  rev <- asn:::asn_brand_col(5, direction = -1)
  expect_false(identical(fwd, rev))
})

test_that("asn_brand_col() works for all named palettes", {
  pals <- c(
    "asn_brand_bw",
    "asn_brand_dark_mode",
    "asn_brand_highlight_one",
    "asn_brand_main_blue",
    "asn_brand_secondary_blue",
    "asn_brand_main_orange",
    "asn_brand_primary",
    "asn_brand_secondary"
  )
  for (p in pals) {
    result <- asn:::asn_brand_col(3, asn_brand_palette = p)
    expect_length(result, 3)
  }
})

test_that("asn_brand_col() warns and falls back for unknown palette", {
  expect_warning(
    result <- asn:::asn_brand_col(3, asn_brand_palette = "nonexistent"),
    regexp = "does not exist"
  )
  expect_length(result, 3)
})

# ── asn_brand_pal() ───────────────────────────────────────────────────────────

test_that("asn_brand_pal() returns a function", {
  expect_type(asn:::asn_brand_pal(), "closure")
})
