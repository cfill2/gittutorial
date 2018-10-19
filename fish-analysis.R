.libPaths("P:/RLibrary")

library(tidyverse)
source("R/2018-10-12-Themes.R")
fishData <- read_csv("https://raw.githubusercontent.com/cfill2/gittutorial/master/data/Gaeta_etal_CLC_data.csv")

#fishData <- read_csv("data/Gaeta_etal")

fishData %>% 
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) -> fishData
