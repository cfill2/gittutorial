.libPaths("P:/RLibrary")

library(tidyverse)
source("R/2018-10-12-Themes.R")
# fishData <- read_csv("https://raw.githubusercontent.com/cfill2/gittutorial/master/data/Gaeta_etal_CLC_data.csv")

fishData <- read_csv("data/Gaeta_etal_CLC_data.csv") #need .csv

fishData %>% 
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) -> fishData
#Histogram of scale length
#fill by length_cat
#facet wrap ~ length_cat with themes

ggplot()+
  geom_histogram(data = fishData, aes(x = scalelength, fill = length_cat)) +
  facet_wrap(~length_cat, nrow = 1) + 
  theme_mypresentation() -> Histogram

Histogram


## Chris's modifications

ggplot() +
  geom_histogram(data = fishData, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))
