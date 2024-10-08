#### Preamble ####
# Purpose: Simulates Date
# Author: Sheng Wang
# Date: 19 September 2024
# Contact: wangsheng20040108@163.com
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(108)

start_date <- as.Date("2019-01-01")
end_date <- as.Date("2023-12-31")


number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 10)
  )

write_csv(data, "data/raw_data/simulated.csv") 

