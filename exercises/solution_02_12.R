library(gapminder)
library(tidyverse)
# From the data frame object `gapminder`, summarise the population average with 
# the `mean()` function by `year` and by `continent` by adding the second 
# grouping variable after the first one (use a coma to separate them) and by 
# using the pipe operator:

gapminder %>% 
  group_by(continent, year) %>% 
  summarise(m_pop = mean(pop))

# From the data frame object `gapminder`, summarise the population standard 
# deviation with the `sd()` function by `year` and by `continent` by adding the 
# second grouping variable after the first one (use a coma to separate them) and 
# by using the pipe operator:

gapminder %>% 
  group_by(continent, year) %>% 
  summarise(sd_pop = sd(pop))



