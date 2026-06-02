# ── theme_asn() ──────────────────────────────────────────────────────────────

test_that("theme_asn() returns a ggplot2 theme object", {
  result <- theme_asn()
  expect_s3_class(result, "theme")
})

test_that("theme_asn() accepts base_size argument", {
  result <- theme_asn(base_size = 12)
  expect_s3_class(result, "theme")
})

test_that("theme_asn() accepts custom fonts", {
  result <- theme_asn(title_font = "serif", base_font = "sans")
  expect_s3_class(result, "theme")
})

test_that("theme_asn() can be added to a ggplot", {
  p <- ggplot2::ggplot(iris, ggplot2::aes(x = Sepal.Length, y = Sepal.Width)) +
    ggplot2::geom_point() +
    theme_asn()
  expect_s3_class(p, "gg")
})

# ── theme_asn_dark() ─────────────────────────────────────────────────────────

test_that("theme_asn_dark() returns a ggplot2 theme object", {
  result <- theme_asn_dark()
  expect_s3_class(result, "theme")
})

test_that("theme_asn_dark() accepts base_size argument", {
  result <- theme_asn_dark(base_size = 10)
  expect_s3_class(result, "theme")
})

test_that("theme_asn_dark() accepts custom fonts", {
  result <- theme_asn_dark(title_font = "serif", base_font = "sans")
  expect_s3_class(result, "theme")
})

test_that("theme_asn_dark() can be added to a ggplot", {
  p <- ggplot2::ggplot(iris, ggplot2::aes(x = Sepal.Length, y = Sepal.Width)) +
    ggplot2::geom_point() +
    theme_asn_dark()
  expect_s3_class(p, "gg")
})

# ── asn_theme / hc_theme_asn (object tests) ───────────────────────────────────

test_that("asn_theme is a highcharter theme object", {
  expect_s3_class(asn_theme, "hc_theme")
})

test_that("hc_theme_asn is a highcharter theme object", {
  expect_s3_class(hc_theme_asn, "hc_theme")
})

test_that("hc_theme_asn has expected color palette", {
  expect_true("#00468b" %in% hc_theme_asn$colors)
  expect_true("#ff8200" %in% hc_theme_asn$colors)
})
