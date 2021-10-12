library(tidyverse)
library(raster)
library(sf)

substrate <- read_csv('Book1.csv')

summary <- substrate %>% 
  group_by(site, substrate) %>% 
  dpylr::count(substrate)

ggplot(summary, aes(fill=substrate, y=n, x=site)) + 
  geom_bar(position="fill", stat="identity")




