library(tidyverse)

mpg

#3.6.1
#use geom_line for line chart, geom_boxplot for boxplot, geom_histogram for histogram, geom_area for area

#Line chart
mpg %>%
  group_by(year) %>%
  summarise(m = mean(cty)) %>%
  ggplot(aes(year, m)) +
  geom_line()

#Boxplot
ggplot(mpg, aes(class, hwy)) +
  geom_boxplot()

#Histogram
ggplot(mpg, aes(displ))+
  geom_histogram(bins = 60)

#Area
huron <- data.frame(year = 1875:1972, level = as.vector(LakeHuron))
ggplot(huron, aes(year, level)) +
  geom_area()
?mpg
