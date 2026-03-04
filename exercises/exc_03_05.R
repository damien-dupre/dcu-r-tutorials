library(gapminder)
library(tidyverse)
# Build a ggplot with the `gapminder` dataset and one `geom_boxplot()` layer 
# which contains the x as `continent`, y as `lifeExp` and color as `continent` 
# in its `aes()`. Use `year` as a facet variable, use a theme of your choice as 
# well and changes axises labels:

ggplot(_ _ _) +
  geom_boxplot(...

# Build a ggplot with the `gapminder` dataset and:
# - One `geom_line()` layer which contains the x as `year`, y as `lifeExp` and 
#   group as `country` in its `aes()`,
# - One `geom_smooth()` layer which contains the x as `year`, y as `lifeExp` and 
#   color as `continent` in its `aes()` ,
# - One `facet_wrap()` for each continent.
# Also change the labels of the axises and use a theme of your choice as well:
  
ggplot(_ _ _ , aes(x = _ _ _ , y = _ _ _)) +
  geom_line(...


