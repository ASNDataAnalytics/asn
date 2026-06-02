# Shared test data
make_check_all_df <- function() {
  data.frame(
    group    = c("A", "B", "A", "B", "A"),
    Q5_1     = c("Option1", NA,        "Option1", NA,        "Option1"),
    Q5_2     = c(NA,        "Option2", NA,        "Option2", NA),
    Q5_3     = c("Option3", "Option3", NA,        NA,        "Option3"),
    Q5_TEXT  = c("foo",     "bar",     NA,        NA,        "baz"),
    stringsAsFactors = FALSE
  )
}

# ── check_all() ─────────────────────────────────────────────────────────────

test_that("check_all() returns a data frame", {
  df <- make_check_all_df()
  result <- check_all(df, column_prefix = "Q5", free_text_var_suffix = "_TEXT")
  expect_s3_class(result, "data.frame")
})

test_that("check_all() ungrouped has Variable and N columns", {
  df <- make_check_all_df()
  result <- check_all(df, column_prefix = "Q5", free_text_var_suffix = "_TEXT")
  expect_named(result, c("Variable", "N"))
})

test_that("check_all() ungrouped counts correctly", {
  df <- make_check_all_df()
  result <- check_all(df, column_prefix = "Q5", free_text_var_suffix = "_TEXT")
  expect_equal(result$N[result$Variable == "Option1"], 3L)
  expect_equal(result$N[result$Variable == "Option2"], 2L)
  expect_equal(result$N[result$Variable == "Option3"], 3L)
})

test_that("check_all() ungrouped excludes free-text column", {
  df <- make_check_all_df()
  result <- check_all(df, column_prefix = "Q5", free_text_var_suffix = "_TEXT")
  expect_false("foo" %in% result$Variable)
})

test_that("check_all() grouped has group, Variable and N columns", {
  df <- make_check_all_df()
  result <- check_all(df, group_var = group, column_prefix = "Q5",
                      free_text_var_suffix = "_TEXT")
  expect_true("group" %in% names(result))
  expect_true("Variable" %in% names(result))
  expect_true("N" %in% names(result))
})

test_that("check_all() grouped excludes free-text column", {
  df <- make_check_all_df()
  result <- check_all(df, group_var = group, column_prefix = "Q5",
                      free_text_var_suffix = "_TEXT")
  expect_false("foo" %in% result$Variable)
})

test_that("check_all() works without free-text column (ungrouped)", {
  df <- data.frame(
    Q7_1 = c("A", NA, "A"),
    Q7_2 = c(NA, "B", "B"),
    stringsAsFactors = FALSE
  )
  result <- check_all(df, column_prefix = "Q7", free_text_var_suffix = "_TEXT")
  expect_s3_class(result, "data.frame")
  expect_named(result, c("Variable", "N"))
})

test_that("check_all() works without free-text column (grouped)", {
  df <- data.frame(
    grp  = c("X", "Y", "X"),
    Q7_1 = c("A", NA,  "A"),
    Q7_2 = c(NA,  "B", "B"),
    stringsAsFactors = FALSE
  )
  result <- check_all(df, group_var = grp, column_prefix = "Q7",
                      free_text_var_suffix = "_TEXT")
  expect_s3_class(result, "data.frame")
  expect_true("grp" %in% names(result))
})

test_that("check_all() drops NA values from counts", {
  df <- make_check_all_df()
  result <- check_all(df, column_prefix = "Q5", free_text_var_suffix = "_TEXT")
  expect_false(any(is.na(result$Variable)))
})

# ── select_all() ─────────────────────────────────────────────────────────────

make_select_all_df <- function() {
  dplyr::tribble(
    ~Q4,         ~Q15_1,  ~Q15_2,            ~Q15_3,             ~Q15_4,
    "Community", NA,      NA,                NA,                 NA,
    "Academic",  NA,      "TREKS",           NA,                 NA,
    "Academic",  NA,      NA,                "Lipps Fellowship", NA,
    "Community", "STARS", NA,                NA,                 "Campbell Fellows",
    "Academic",  "STARS", NA,                NA,                 "Campbell Fellows",
    "Community", NA,      "TREKS",           NA,                 NA
  ) |>
    dplyr::mutate(dplyr::across(dplyr::everything(), as.factor))
}

test_that("select_all() returns a data frame", {
  df <- make_select_all_df()
  result <- select_all(data = df, column_prefix = "Q15")
  expect_s3_class(result, "data.frame")
})

test_that("select_all() ungrouped result has column_prefix and N columns", {
  df <- make_select_all_df()
  result <- select_all(data = df, column_prefix = "Q15")
  expect_named(result, c("column_prefix", "N"))
})

test_that("select_all() counts responses correctly (ungrouped)", {
  df <- make_select_all_df()
  result <- select_all(data = df, column_prefix = "Q15")
  # STARS appears 2x, TREKS 2x, Lipps 1x, Campbell 2x
  stars_n <- result$N[result$column_prefix == "STARS"]
  expect_equal(stars_n, 2L)
})

test_that("select_all() grouped returns a data frame with group column", {
  df <- make_select_all_df()
  result <- select_all(data = df, group_var = Q4, column_prefix = "Q15")
  expect_s3_class(result, "data.frame")
  expect_true("Q4" %in% names(result))
})

test_that("select_all() grouped drops rows where all responses are NA", {
  df <- make_select_all_df()
  result <- select_all(data = df, column_prefix = "Q15")
  # First row (Community, all NA) should not contribute to counts
  expect_false(any(is.na(result$column_prefix)))
})
