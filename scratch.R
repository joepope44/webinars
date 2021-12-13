library(RSocrata)
library(tigris)
library(tidyverse)
library(leaflet)


# Pulling in Data ---------------------------------------------------------


# 2019-20 School Quality Guide Elementary Middle School
# https://data.cityofnewyork.us/Education/2019-20-School-Quality-Guide-Elementary-Middle-Sch/jtpv-nuuc

.url <- "https://data.cityofnewyork.us/resource/jtpv-nuuc.json"
school_quality_df <- RSocrata::read.socrata(.url)

# 2010 - 2016 School Safety Report
.url <- "https://data.cityofnewyork.us/resource/qybk-bjjc.json"
school_safety_df <- RSocrata::read.socrata(.url)

# Note - it is possible to use filters in api calls, but perhaps not necessary when dealing 
# with small datasets s

# Math Test Results 
# https://data.cityofnewyork.us/Education/2013-2019-Math-Test-Results-Charter-School/3xsw-bpuy

.url <- "https://data.cityofnewyork.us/resource/3xsw-bpuy.json"
math_test_df <- RSocrata::read.socrata(.url)

# Geo - School Districts --------------------------------------------------

ny_school_districts <- tigris::school_districts("NY") 

ggplot2::ggplot(ny_school_districts) + 
  geom_sf() + 
  theme_void()


