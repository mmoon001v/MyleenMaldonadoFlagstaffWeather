#' A cleaning file
#'
#' @format a data frame with 10882 observations
#' \describe{
#'   \item{Date}{The date of observation as a POSIX date format.}
#'   \item{MaxTemp}{Daily maximum temperature in degrees Farhenheit.}
#' }
#' @source \url{www.ncdc.noaa.gov}
"Cleaning"



library(tidyverse)
library(lubridate)

Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  select(DATE, PRCP, SNOW, TMAX, TMIN) %>%
  drop_na() %>%
  mutate(DATE=lubridate::ymd(DATE))


# Save the data frame to the data/ directory as Flagstaff_Weather.rda
usethis::use_data(Flagstaff_Weather, overwrite = TRUE)
