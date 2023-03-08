asn_colors <-
  c(
    "#00468b",
    "#ff8200",
    "#0077C8",
    "#cccccc",
    "#008eaa",
    "#319b42",
    "#555555",
    "#9bb8d3",
    "#ffb500",
    "#3f2a56",
    "#00baae",
    "#ffffff"
  )

asn_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols)) {
    return(asn_colors)
  }

  asn_colors[cols]
}

asn_primary <- function() {
  # Primary ASN Brand Colors
  asn_cols(1, 2, 5, 6)
}

asn_secondary <- function() {
  # Secondary ASN Brand Colors
  asn_cols(10, 9, 3, 8, 11)
}

asn_bw <- function() {
  # Grays
  asn_cols(4, 7)
}

asn_main_blue <- function() {
  # White and Main Blue for sequential palette
  asn_cols(12, 1)
}

asn_secondary_blue <- function() {
  # White and Secondary Blue for sequential palette
  asn_cols(12, 3)
}

asn_main_orange <- function() {
  # White and Orange for sequential palette
  asn_cols(12, 2)
}

asn_highlight_one_of_two <- function() {
  # Orange and Grey
  asn_cols(2, 4)
}

asn_dark_mode <- function() {
  # Light/Neon Colors for Black Background
  asn_cols(2, 6, 9, 3)
}

asn_spring <- function() {
  # Blue/Green/yellow
  asn_cols(3, 6, 9)
}

scale_color_asn <- function(..., palette = "primary") {

  pal <- switch(palette,
                "primary" = unname(asn_primary()) |> rep(100),
                "secondary" = unname(asn_secondary()) |> rep(100),
                "bw" = unname(asn_bw()) |> rep(100),
                "main_blue" = unname(asn_main_blue()) |> rep(100),
                "secondary_blue" = unname(asn_secondary_blue()) |> rep(100),
                "main_orange" = unname(asn_main_orange()) |> rep(100),
                "highlight_one_of_two" = unname(asn_highlight_one_of_two()) |> rep(100),
                "dark_mode" = unname(asn_dark_mode()) |> rep(100),
                "spring" = unname(asn_spring()) |> rep(100)
  )

  ggplot2::scale_color_manual(values = pal)
}

scale_fill_asn <- function(..., palette = "primary") {

  pal <- switch(palette,
                "primary" = unname(asn_primary()) |> rep(100),
                "secondary" = unname(asn_secondary()) |> rep(100),
                "bw" = unname(asn_bw()) |> rep(100),
                "main_blue" = unname(asn_main_blue()) |> rep(100),
                "secondary_blue" = unname(asn_secondary_blue()) |> rep(100),
                "main_orange" = unname(asn_main_orange()) |> rep(100),
                "highlight_one_of_two" = unname(asn_highlight_one_of_two()) |> rep(100),
                "dark_mode" = unname(asn_dark_mode()) |> rep(100),
                "spring" = unname(asn_spring()) |> rep(100)
  )

  ggplot2::scale_fill_manual(values = pal)
}

