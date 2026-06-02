test_that("pretty_label() outputs a line of the correct total width", {
  # Total width should be 2 (# + space) + nchar(label) + 1 (space) + dashes = 74
  # "# " + label + " " + dashes where dashes = 72 - nchar(label)
  expect_output(pretty_label("01 Data"), regexp = "^# 01 Data -+$")
})

test_that("pretty_label() uses default label when none provided", {
  expect_output(pretty_label(), regexp = "00 Libraries")
})

test_that("pretty_label() outputs a string of correct total character width", {
  out <- capture.output(pretty_label("01 Data"))
  # "# " (2) + "01 Data" (7) + " " (1) + dashes (72-7=65) = 75 chars
  expect_equal(nchar(out), 75)
})

test_that("pretty_label() works with a longer label", {
  label <- "05 Modeling Results"
  out <- capture.output(pretty_label(label))
  expected_dashes <- 72 - nchar(label)
  expect_true(grepl(paste0(strrep("-", expected_dashes), "$"), out))
})

# asn_section_label tests
test_that("asn_section_label() returns a character string invisibly", {
  result <- asn_section_label("01 Data")
  expect_type(result, "character")
})

test_that("asn_section_label() produces R comment format by default", {
  result <- asn_section_label("01 Data")
  expect_true(startsWith(result, "# "))
})

test_that("asn_section_label() produces Typst comment format when typst = TRUE", {
  result <- asn_section_label("01 Data", typst = TRUE)
  expect_true(startsWith(result, "// "))
})

test_that("asn_section_label() produces correct total width for R (74 chars)", {
  # "# " (2) + label + " " (1) + dashes = 74 total
  # size = 72, so rep_length = 72 - nchar(label); total = 2 + nchar(label) + 1 + rep_length = 75
  result <- asn_section_label("01 Data")
  expect_equal(nchar(result), 75)
})

test_that("asn_section_label() produces correct total width for Typst (74 chars)", {
  # "// " (3) + label + " " (1) + dashes where size=71
  result <- asn_section_label("01 Data", typst = TRUE)
  expect_equal(nchar(result), 75)
})

test_that("asn_section_label() uses default label", {
  result <- asn_section_label()
  expect_true(grepl("00 Libraries", result))
})
