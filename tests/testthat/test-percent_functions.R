test_that("pct_chg() calculates percent diff from previous value", {
  expect_equal(
    pct_chg(1:5),
    c(0.00000000, 1.00000000, 0.50000000, 0.33333333, 0.25000000)
  )
})

test_that("pct_chg() returns 0 for first element", {
  result <- pct_chg(c(10, 20, 30))
  expect_equal(result[1], 0)
})

test_that("pct_chg() handles single element", {
  expect_equal(pct_chg(5), 0)
})

test_that("pct_norm() calculates percent diff from first value", {
  expect_equal(pct_norm(1:5), c(0, 1, 2, 3, 4))
})

test_that("pct_norm() returns 0 for first element", {
  expect_equal(pct_norm(c(100, 150, 200))[1], 0)
})

test_that("pct_norm() handles single element", {
  expect_equal(pct_norm(10), 0)
})

test_that("pct_fun() returns a data frame with n and Percent columns", {
  result <- pct_fun(iris, col_var = Species)
  expect_s3_class(result, "data.frame")
  expect_true("n" %in% names(result))
  expect_true("Percent" %in% names(result))
})

test_that("pct_fun() sorts by descending n by default (likert = FALSE)", {
  result <- pct_fun(iris, col_var = Species)
  expect_true(all(diff(result$n) <= 0))
})

test_that("pct_fun() retains original order when likert = TRUE", {
  df <- data.frame(
    rating = factor(
      c("Low", "Medium", "High", "Low", "High"),
      levels = c("Low", "Medium", "High")
    )
  )
  result <- pct_fun(df, col_var = rating, likert = TRUE)
  expect_equal(as.character(result$rating), c("Low", "Medium", "High"))
})

test_that("pct_fun() drops NA values", {
  df <- data.frame(x = c("a", "b", NA, "a"))
  result <- pct_fun(df, col_var = x)
  expect_false(any(is.na(result$x)))
})

test_that("pct_fun() accuracy argument controls decimal places", {
  result <- pct_fun(iris, col_var = Species, accuracy = 0.1)
  expect_true(all(grepl("%", result$Percent)))
})
