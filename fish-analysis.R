.libPaths("P:/RLibrary")

library(tidyverse)
source("R/2018-10-12-Themes.R")
fishData <- read_csv("https://raw.githubusercontent.com/cfill2/gittutorial/master/data/Gaeta_etal_CLC_data.csv")

#fishData <- read_csv("data/Gaeta_etal_CLC_data")

fishData %>% 
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) -> fishData
#Histogram of scale length
#fill by length_cat
#facet wrap ~ length_cat with themes

ggplot()+
  geom_histogram(data = fishData, aes(x = scalelength, fill = length_cat)) +
theme_mypresentation() +
facet_wrap(~length_cat, nrow = 1)-> Histogram