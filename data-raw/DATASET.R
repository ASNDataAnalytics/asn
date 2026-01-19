## 1. Synthesized Survey Data Based on the 2025 ASN Nephrology Fellow Survey

set.seed(20260116)

board_prep_df <- 
  data.frame(
    q6 = sample(
      c("United States", "Other country"),
      size = 400,
      prob = c(0.42, 0.58),
      replace = TRUE
    ),
    q65_1 = sample(
      c("ASN Kidney Self-Assessment Program (KSAP)", NA_character_),
      size = 400,
      prob = c(0.484, 1 - 0.484),
      replace = TRUE
    ),
    q65_2 = sample(
      c("ASN Nephrology Self-Assessment Program (NephSAP)", NA_character_),
      size = 400,
      prob = c(0.274, 1 - 0.274),
      replace = TRUE
    ),
    q65_3 = sample(
      c("ASN Board Review Course & Update", NA_character_),
      size = 400,
      prob = c(0.381, 1 - 0.381),
      replace = TRUE
    ),
    q65_4 = sample(
      c("Oakstone/Brigham Intensive Review of Nephrology Course", NA_character_),
      size = 400,
      prob = c(0.0442, 1 - 0.0442),
      replace = TRUE
    ),
    q65_5 = sample(
      c("Other board review course", NA_character_),
      size = 400,
      prob = c(0.0324, 1 - 0.0324),
      replace = TRUE
    ),
    q65_6 = sample(
      c("Other resource(s) (please specify)", NA_character_),
      size = 400,
      prob = c(0.0324, 1 - 0.0324),
      replace = TRUE
    ),
    q65_6_text = c(
      rep(NA_character_, 235),
      "Textbooks",
      rep(NA_character_, 14),
      "Washington Manual Nephrology Subspecialty Consult",
      rep(NA_character_, 50),
      "Board Vitals for Nephrology",
      rep(NA_character_, 56),
      "Institution Materials",
      rep(NA_character_, 5),
      "Brcu",
      rep(NA_character_, 23),
      "uptodate",
      rep(NA_character_, 10),
      "Comprehensive"
    )
  ) 

usethis::use_data(board_prep_df, overwrite = TRUE)

## 2. Ratio of Nephrologists per 100K U.S. Population by State

neph_per_100K_df <- 
  tibble::tribble(
    ~MailState , ~neph_per_100k   ,
    "ND"       , 2.66143841875072 ,
    "VT"       , 2.6205935490236  ,
    "OK"       , 2.04238213609549 ,
    "MI"       , 2.81652259426326 ,
    "NM"       , 2.6400598916444  ,
    "IA"       , 1.58463143647772 ,
    "AZ"       , 2.94392085027928 ,
    "WV"       , 2.76758759555943 ,
    "WI"       , 2.36071566781695 ,
    "NV"       , 2.86215340333372 ,
    "KY"       , 2.61504264826907 ,
    "OH"       , 2.78246831834212 ,
    "GA"       , 2.97349199669716 ,
    "FL"       , 2.65882344312135 ,
    "TX"       , 3.05585577141808 ,
    "MO"       , 2.88335863923513 ,
    "VA"       , 2.75911495377338 ,
    "MD"       , 3.50647942709917 ,
    "IN"       , 2.60169464796528 ,
    "DE"       , 3.08754244164786 ,
    "IL"       , 3.24309128613802 ,
    "AR"       , 2.0524762800529  ,
    "DC"       , 5.52868807141901 ,
    "UT"       , 1.59734109505574 ,
    "NJ"       , 3.79545402692342 ,
    "SD"       , 3.48468101556672 ,
    "PA"       , 3.37232607765983 ,
    "NY"       , 3.94176183682454 ,
    "NH"       , 1.92554694447792 ,
    "WA"       , 2.21449552773719 ,
    "TN"       , 2.79786645895306 ,
    "WY"       , 1.1964441679329  ,
    "SC"       , 2.43140559371769 ,
    "MA"       , 4.00477289682913 ,
    "ME"       , 2.28629239107603 ,
    "CT"       , 3.95276120957787 ,
    "AL"       , 2.75515844798994 ,
    "KS"       , 2.1345078773505  ,
    "NE"       , 1.91159958628961 ,
    "CA"       , 2.85723812270986 ,
    "AK"       , 1.08620385330817 ,
    "LA"       , 3.33473479377281 ,
    "MT"       , 1.50269335685785 ,
    "NC"       , 2.72948112563802 ,
    "MN"       , 2.69422400091221 ,
    "OR"       , 2.32741128625208 ,
    "RI"       , 3.53443674219184 ,
    "MS"       , 2.44634020709629 ,
    "HI"       , 2.84448243254587 ,
    "ID"       , 1.42051075478839 ,
    "CO"       , 2.18594457969623
  )

usethis::use_data(neph_per_100K_df, overwrite = TRUE)

## 3. Grid Data Frame for asn_tilegrid()

# fmt: skip

grid_df <-
  tibble::tribble(
    ~State, ~x, ~y,
    "AL", 7, 7,
    "AK", 1, 1,
    "AZ", 2, 6,
    "AR", 5, 6,
    "CA", 1, 5,
    "CO", 3, 5,
    "CT", 10, 4,
    "DC", 9, 6,
    "DE", 10, 5,
    "FL", 9, 8,
    "GA", 8, 7,
    "HI", 1, 8,
    "ID", 2, 3,
    "IL", 6, 3,
    "IN", 6, 4,
    "IA", 5, 4,
    "KS", 4, 6,
    "KY", 6, 5,
    "LA", 5, 7,
    "ME", 11, 1,
    "MD", 9, 5,
    "MA", 10, 3,
    "MI", 7, 3,
    "MN", 5, 3,
    "MS", 6, 7,
    "MO", 5, 5,
    "MT", 3, 3,
    "NE", 4, 5,
    "NV", 2, 4,
    "NH", 11, 2,
    "NJ", 9, 4,
    "NM", 3, 6,
    "NY", 9, 3,
    "NC", 7, 6,
    "ND", 4, 3,
    "OH", 7, 4,
    "OK", 4, 7,
    "OR", 1, 4,
    "PA", 8, 4,
    "RI", 11, 4,
    "SC", 8, 6,
    "SD", 4, 4,
    "TN", 6, 6,
    "TX", 4, 8,
    "UT", 2, 5,
    "VT", 10, 2,
    "VA", 8, 5,
    "WA", 1, 3,
    "WV", 7, 5,
    "WI", 6, 2,
    "WY", 3, 4
  ) |>
  dplyr::mutate(
    y = dplyr::case_when(
      y == 1 ~ 12,
      y == 2 ~ 11,
      y == 3 ~ 10,
      y == 4 ~ 9,
      y == 5 ~ 8,
      y == 6 ~ 7,
      y == 7 ~ 6,
      y == 8 ~ 5,
      y == 9 ~ 4,
      y == 10 ~ 3,
      y == 11 ~ 2,
      y == 12 ~ 1
    )
  )

usethis::use_data(grid_df, overwrite = TRUE)
