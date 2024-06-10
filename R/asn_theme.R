#' ASN Brand Identity for `highcharter` Package
#' @import highcharter
#' @description
#' `r lifecycle::badge('superseded')`
#'
#' `asn_theme` has been superseded in favor of `hc_theme_asn`, which follows the
#' `highcharter` naming convention.
#'
#' @return Custom highcharter theme with ASN Brand Identity
#' @export
#'
#' @examples
#' library(highcharter)
#' highchart() |>
#'   hc_add_series(
#'     data = iris,
#'     type = "scatter",
#'     hcaes(
#'       x = Sepal.Length,
#'       y = Sepal.Width,
#'       group = Species
#'     )
#'   ) |>
#'   hc_add_theme(
#'     asn_theme
#'   )


asn_theme <-
  highcharter::hc_theme(
    colors = c(
      "#00468b", "#ff8200", "#0077C8", "#cccccc",
      "#008eaa", "#319b42", "#555555", "#9bb8d3",
      "#ffb500", "#3f2a56", "#00baae"
  ),
  chart = list(
    style = list(
      fontFamily = "Roboto",
      color = "#666666"
    )
  ),
  title = list(
    align = "left",
    style = list(
      fontFamily = "Roboto",
      fontWeight = "bold"
    )
  ),
  subtitle = list(
    align = "left",
    style = list(
      fontFamily = "Roboto"
    )
  ),
  legend = list(
    align = "right",
    verticalAlign = "bottom"
  ),
  xAxis = list(
    gridLineWidth = 1,
    gridLineColor = "#F3F3F3",
    lineColor = "#F3F3F3",
    minorGridLineColor = "#F3F3F3",
    tickColor = "#F3F3F3",
    tickWidth = 1
  ),
  yAxis = list(
    gridLineColor = "#F3F3F3",
    lineColor = "#F3F3F3",
    minorGridLineColor = "#F3F3F3",
    tickColor = "#F3F3F3",
    tickWidth = 1
  ),
  plotOptions = list(
    line = list(
      marker = list(enabled = FALSE)
    ),
    spline = list(
      marker = list(enabled = FALSE)
    ),
    area = list(
      marker = list(enabled = FALSE)
    ),
    areaspline = list(
      marker = list(enabled = FALSE)
    ),
    arearange = list(
      marker = list(enabled = FALSE)
    ),
    bubble = list(
      maxSize = "10%"
    )
  )
)
