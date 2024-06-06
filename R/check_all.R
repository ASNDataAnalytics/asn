check_all <- function(
    data,
    group_var = NULL,
    column_prefix,
    free_text_var_suffix = "_TEXT"
) {

  group_var_expr <- rlang::enquo(group_var)

  free_text_column <- paste0(column_prefix, free_text_var_suffix)

  num_col <- data |>
    dplyr::select(
      dplyr::all_of(
        dplyr::contains(column_prefix)
      )
    ) |>
    # Omit Free Text Responses
    dplyr::select(
      !free_text_column
    ) |>
    ncol()

  if(rlang::quo_is_null(group_var_expr)) {

    ret <- data |>
      dplyr::select(
        dplyr::all_of(
          dplyr::contains(column_prefix)
        )
      ) |>
      # Omit Free Text Responses
      dplyr::select(
        !free_text_column
      ) |>
      dplyr::rowwise() |>
      dplyr::mutate(
        all_miss = sum(
          is.na(
            dplyr::c_across(
              dplyr::all_of(dplyr::contains(column_prefix))
            )
          )
        )
      ) |>
      dplyr::ungroup() |>
      dplyr::filter(all_miss < num_col) |>
      dplyr::reframe(
        dplyr::across(
          dplyr::all_of(
            dplyr::contains(column_prefix)
          ),
          forcats::fct_count
        )
      ) |>
      tidyr::pivot_longer(
        names_to = column_prefix,
        values_to = "Number",
        cols = dplyr::everything()
      ) |>
      dplyr::select(-column_prefix) |>
      dplyr::mutate(
        column_prefix = Number$f,
        N = Number$n
      ) |>
      dplyr::select(
        Variable = column_prefix,
        N
      ) |>
      tidyr::drop_na() |>
      dplyr::distinct()


  } else {

    ret <- data |>
      dplyr::select(
        !! group_var_expr,
        dplyr::all_of(
          dplyr::contains(column_prefix)
        )
      ) |>
      # Omit Free Text Responses
      dplyr::select(
        !free_text_column
      ) |>
      dplyr::rowwise() |>
      dplyr::mutate(
        all_miss = sum(
          is.na(
            dplyr::c_across(
              dplyr::all_of(contains(column_prefix))
            )
          )
        )
      ) |>
      dplyr::ungroup() |>
      dplyr::filter(all_miss < num_col) |>
      dplyr::group_by(!! group_var_expr) |>
      dplyr::reframe(
        dplyr::across(
          dplyr::all_of(
            dplyr::contains(column_prefix)
          ),
          forcats::fct_count
        )
      ) |>
      dplyr::ungroup() |>
      tidyr::pivot_longer(
        names_to = column_prefix,
        values_to = "Number",
        cols = - !! group_var_expr
      ) |>
      dplyr::select(-column_prefix) |>
      dplyr::mutate(
        column_prefix = Number$f,
        N = Number$n
      ) |>
      dplyr::select(
        !! group_var_expr,
        Variable = column_prefix,
        N
      ) |>
      tidyr::drop_na() |>
      dplyr::distinct()
  }

  ret

}
