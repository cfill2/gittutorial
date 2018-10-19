.libPaths("P:/RLibrary")

library(tidyverse)
source("R/2018-10-12-Themes.R")
fishData <- read_csv("https://raw.githubusercontent.com/cfill2/gittutorial/master/data/Gaeta_etal_CLC_data.csv")

#fishData <- read_csv("data/")

fishData %>% 
  mutate(length_cat = case_when(length >= 200 ~ "big",
                                length < 200 ~ "small")) -> fishData
