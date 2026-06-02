# ── asn_cols() ───────────────────────────────────────────────────────────────

test_that("asn_cols() returns all colors when called with no args", {
  result <- asn_cols()
  expect_type(result, "character")
  expect_length(result, 12)
})

test_that("asn_cols() returns a specific color by position", {
  result <- asn_cols(1)
  expect_equal(unname(result), "#00468b")
})

test_that("asn_cols() returns multiple colors by position", {
  result <- asn_cols(1, 2)
  expect_length(result, 2)
})

# ── palette accessor functions ────────────────────────────────────────────────

test_that("asn_primary() returns 4 colors", {
  expect_length(asn_primary(), 4)
})

test_that("asn_bw() returns 2 colors", {
  expect_length(asn_bw(), 2)
})

test_that("asn_spring() returns 3 colors", {
  expect_length(asn_spring(), 3)
})

test_that("asn_dark_mode() returns 4 colors", {
  expect_length(asn_dark_mode(), 4)
})

test_that("asn_secondary() returns 5 colors", {
  expect_length(asn_secondary(), 5)
})

test_that("asn_main_blue() returns 2 colors", {
  expect_length(asn_main_blue(), 2)
})

test_that("asn_secondary_blue() returns 2 colors", {
  expect_length(asn_secondary_blue(), 2)
})

test_that("asn_main_orange() returns 2 colors", {
  expect_length(asn_main_orange(), 2)
})

test_that("asn_highlight_one_of_two() returns 2 colors", {
  expect_length(asn_highlight_one_of_two(), 2)
})

# ── scale_color_asn() ─────────────────────────────────────────────────────────

test_that("scale_color_asn() returns a ggplot2 Scale object", {
  expect_s3_class(scale_color_asn(), "Scale")
})

test_that("scale_color_asn() palette = 'primary' works", {
  expect_s3_class(scale_color_asn(palette = "primary"), "Scale")
})

test_that("scale_color_asn() palette = 'secondary' works", {
  expect_s3_class(scale_color_asn(palette = "secondary"), "Scale")
})

test_that("scale_color_asn() palette = 'bw' works", {
  expect_s3_class(scale_color_asn(palette = "bw"), "Scale")
})

test_that("scale_color_asn() palette = 'main_blue' works", {
  expect_s3_class(scale_color_asn(palette = "main_blue"), "Scale")
})

test_that("scale_color_asn() palette = 'secondary_blue' works", {
  expect_s3_class(scale_color_asn(palette = "secondary_blue"), "Scale")
})

test_that("scale_color_asn() palette = 'main_orange' works", {
  expect_s3_class(scale_color_asn(palette = "main_orange"), "Scale")
})

test_that("scale_color_asn() palette = 'highlight_one_of_two' works", {
  expect_s3_class(scale_color_asn(palette = "highlight_one_of_two"), "Scale")
})

test_that("scale_color_asn() palette = 'dark_mode' works", {
  expect_s3_class(scale_color_asn(palette = "dark_mode"), "Scale")
})

test_that("scale_color_asn() palette = 'spring' works", {
  expect_s3_class(scale_color_asn(palette = "spring"), "Scale")
})

# ── scale_fill_asn() ─────────────────────────────────────────────────────────

test_that("scale_fill_asn() returns a ggplot2 Scale object", {
  expect_s3_class(scale_fill_asn(), "Scale")
})

test_that("scale_fill_asn() palette = 'primary' works", {
  expect_s3_class(scale_fill_asn(palette = "primary"), "Scale")
})

test_that("scale_fill_asn() palette = 'secondary' works", {
  expect_s3_class(scale_fill_asn(palette = "secondary"), "Scale")
})

test_that("scale_fill_asn() palette = 'bw' works", {
  expect_s3_class(scale_fill_asn(palette = "bw"), "Scale")
})

test_that("scale_fill_asn() palette = 'main_blue' works", {
  expect_s3_class(scale_fill_asn(palette = "main_blue"), "Scale")
})

test_that("scale_fill_asn() palette = 'secondary_blue' works", {
  expect_s3_class(scale_fill_asn(palette = "secondary_blue"), "Scale")
})

test_that("scale_fill_asn() palette = 'main_orange' works", {
  expect_s3_class(scale_fill_asn(palette = "main_orange"), "Scale")
})

test_that("scale_fill_asn() palette = 'highlight_one_of_two' works", {
  expect_s3_class(scale_fill_asn(palette = "highlight_one_of_two"), "Scale")
})

test_that("scale_fill_asn() palette = 'dark_mode' works", {
  expect_s3_class(scale_fill_asn(palette = "dark_mode"), "Scale")
})

test_that("scale_fill_asn() palette = 'spring' works", {
  expect_s3_class(scale_fill_asn(palette = "spring"), "Scale")
})

# ── asn_pal() ─────────────────────────────────────────────────────────────────

test_that("asn_pal() returns a function", {
  expect_type(asn_pal(), "closure")
})

test_that("asn_pal() function produces n colors", {
  pal_fn <- asn_pal(palette = "primary")
  expect_length(pal_fn(5), 5)
})

test_that("asn_pal() reverse argument reverses colors", {
  pal_fwd <- asn_pal(palette = "primary")(4)
  pal_rev <- asn_pal(palette = "primary", reverse = TRUE)(4)
  expect_equal(pal_fwd, rev(pal_rev))
})

# ── scale_color_asn_ramp() ───────────────────────────────────────────────────

test_that("scale_color_asn_ramp() discrete returns a Scale", {
  expect_s3_class(
    suppressWarnings(scale_color_asn_ramp()),
    "Scale"
  )
})

test_that("scale_color_asn_ramp() continuous returns a Scale", {
  expect_s3_class(scale_color_asn_ramp(discrete = FALSE), "Scale")
})

test_that("scale_color_asn_ramp() reverse works", {
  expect_s3_class(
    suppressWarnings(scale_color_asn_ramp(reverse = TRUE)),
    "Scale"
  )
})

# ── scale_fill_asn_ramp() ────────────────────────────────────────────────────

test_that("scale_fill_asn_ramp() discrete returns a Scale", {
  expect_s3_class(
    suppressWarnings(scale_fill_asn_ramp()),
    "Scale"
  )
})

test_that("scale_fill_asn_ramp() continuous returns a Scale", {
  expect_s3_class(scale_fill_asn_ramp(discrete = FALSE), "Scale")
})

test_that("scale_fill_asn_ramp() reverse works", {
  expect_s3_class(
    suppressWarnings(scale_fill_asn_ramp(reverse = TRUE)),
    "Scale"
  )
})
