#' Board Prep Resources
#'
#' Resources used by nephrology fellows in preparation for initial board certication in 
#' nephrology. This is a synthesized data set generated based on proportions of actual responses to 
#' measures in the 2025 ASN Nephrology Fellow Survey. 
#'
#' @format A data frame with 8 columns
#' 1. `q6`: Repondent medical school location, either "United States" or "Other country".
#' 2. `q65_1`: ASN Kidney Self-Assessment Program (KSAP) selected as a used resource (<NA> = "No").
#' 3. `q65_2`: ASN Nephrology Self-Assessment Program (NephSAP) selected as a used resource (<NA> = "No").
#' 4. `q65_3`: ASN Board Review Course & Update selected as a used resource (<NA> = "No").
#' 5. `q65_4`: Oakstone/Brigham Intensive Review of Nephrology Course (<NA> = "No").
#' 6. `q65_5`: Other board review course (<NA> = "No").
#' 7. `q65_6`: Other resource(s) (please specify) (<NA> = "No").
#' 8. `q65_6_text`: Free text response describing other resource(s) used.
#'
#' @source <https://data.asn-online.org/posts/2025_fellow_survey/>
#'
#' @examples
#' board_prep_df
#'
"board_prep_df"

#' Nephrologists per 100K U.S. Population by State
#' 
#' Ratio of practicing nephrologists per 100K adult population per state and District of
#' Columbia in 2023. Nephrologist counts aggregated from the American Medical Assosciation
#' Physician Professional Database. U.S. adult population extracted from the U.S. Census Bureau.   
#'
#' @format A data frame with 2 columns:
#' 1. `MailState`: USPS codes for U.S. states and the District of Columbia.
#' 2. `neph_per_100k`: Ratio of practicing nephrologists per 100K adult population in state/DC.
#' @source <https://www.census.gov/data/datasets/time-series/demo/popest/2020s-counties-detail.html>
#' 
#' @examples
#' neph_per_100K_df
#'
"neph_per_100K_df"

#' Grid Data Frame for asn_tilegrid()
#'
#' Data frame of The Economist's 8 x 11 rectangular tile grid for the asn_tilegrid() function, adapted from the tilegrid
#' choropleth designed by The Economist Data Team. 
#'
#' @format A data frame with 6 columns:
#' 1. `State`: USPS codes for U.S. states and the District of Columbia.
#' 2. `x`: Corresponding x coordinate for tilegrid.
#' 3. `y`: Corresponding y coordinate for tilegrid.
#' @source <https://github.com/kpivert/economist_choropleth>
#' @examples
#' grid_df
#'
"grid_df"