test_that("get_labels() returns the label attribute", {
  x <- structure(list(), label = "My Label")
  expect_equal(get_labels(x), "My Label")
})

test_that("get_labels() returns NULL when no label attribute", {
  expect_null(get_labels(list()))
})

test_that("get_labels() works on data frames with label attribute", {
  df <- structure(
    data.frame(Q1 = c("Yes", "No")),
    label = "Did you attend?"
  )
  expect_equal(get_labels(df), "Did you attend?")
})

test_that("get_labels() does not match partial attribute names", {
  x <- structure(list(), labels = "Wrong")
  expect_null(get_labels(x))
})

test_that("get_labs() is deprecated and delegates to get_labels()", {
  x <- structure(list(), label = "Test")
  expect_warning(
    result <- get_labs(x),
    regexp = "deprecated"
  )
  expect_equal(result, "Test")
})
