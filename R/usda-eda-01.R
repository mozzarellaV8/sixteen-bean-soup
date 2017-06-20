# sixteen-bean-soup
# USDA-EDA: Edible Dry Bean Data Overview
# USDA-NASS - National Agricultural Statistics Service
# https://quickstats.nass.usda.gov/results/6A209001-04E7-3990-8A15-698872002352?pivot=short_desc

# load data -------------------------------------------------------------------

library(dplyr)
library(tidyr)

edible.dry <- read.csv("data/16-bean-csv/beans-dry-edible-all.csv")
str(edible.dry)

# columns 19:30 should be renamed - shorter
colnames(edible.dry)[19:30] <- c("acres.harveseted",
                                 "acres.harvested.cv",
                                 "acres.planted",
                                 "acres.planted.cv",
                                 "price.received.dollar.per.cwt",
                                 "price.received.dollar.per.cwt.cv",
                                 "production.in.dollars",
                                 "production.in.dollars.cv",
                                 "production.cwt",
                                 "production.cwt.cv",
                                 "yield.lb.per.acre",
                                 "yield.lb.per.acre.cv")

# CV: Coefficient of variation
# CWT: 100 lbs. (hundredweight, centum+weight)

# We should be able to find out:
# 1. Acres Harvested
# 2. Acres Planted

# A ration of acres harvested to acres planted 
# can be a metric for "success" in a given year;
# The higher the ratio, the less land wasted. 

# 3. Price: USD per CWT
# 4. Production in USD
# 5. Production in CWT
# 6. Yield as lb/acre

# USD per CWT (3) is essentially the ration between
# Production in USD (4) and Production in CWT (5).
# 'Yield as lb/acre' is a ratio of 
# Production in CWT (5) and acres harvested (1)

# Because the data is of the entire US, 
# most fields are populated with factors of one-level.
# These can be removed to look at the quanitative observations.

edible.results <- edible.dry %>%
  select(Year, 19:30)

str(edible.results)

summary(edible.results$acres.harvested.cv)
summary(edible.results$price.received.dollar.per.cwt.cv)

# coefficient of variation observations aren't being reported;
# those can be dropped too,
# and remaining factors can be converted to integers

# function to remove commas
commas <- function(x) {
  x <- gsub("\\,", "", x)
  x
}

edible.results <- edible.results %>%
  select(-contains(".cv")) %>%
  mutate_each(funs(commas)) %>%
  mutate_each(funs(as.integer))

# remove first row (no 2017 data yet)
edible.results <- edible.results[-1, ]


# variable transformations ------------------------------------------------

# 1. harvest:planted ratio
results <- edible.results %>%
  mutate(harvest.ratio = acres.harveseted / acres.planted,
         production.value = production.in.dollars / production.cwt)

# 'harvest ratio' can be examined annually.
# 'production.value' can be compared to 'price.received.dollar.per.cwt'

summary(results$harvest.ratio)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  0.7360  0.9120  0.9479  0.9361  0.9669  0.9948 

# Not bad; aside from a few years, most harvests comprise ove 90% of acres planted.

# How has the yield been over time? 
summary(results$yield.lb.per.acre)
# need to plot this, but generally appears that yield in lbs per acre 
# has gone up since the turn of the century.



