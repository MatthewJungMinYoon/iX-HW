library(tidyverse)

mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5  ))

?geom_point
