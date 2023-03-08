test_that("pct_chg() calculates percent diff from previous value", {
  expect_equal(pct_chg(1:5), c(0.00000000, 1.00000000, 0.50000000, 0.33333333, 0.25000000))
})

test_that("pct_nrom() calculates percent diff from first value", {
  expect_equal(pct_norm(1:5), c(0, 1, 2, 3, 4))
})
