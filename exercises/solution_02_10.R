library(gapminder)
library(tidyverse)
# From the data frame object `gapminder`, summarise the population average with 
# the `mean()` function by `year` and by `continent` by adding the second 
# grouping variable after the first one (use a coma to separate them):

gapminder_group <- group_by(gapminder, continent, year)

summarise(gapminder_group, m_pop = mean(pop))

# From the data frame object `gapminder`, summarise the population standard 
# deviation with the `sd()` function by `year` and by `continent` by adding the 
# second grouping variable after the first one (use a coma to separate them):

gapminder_group <- group_by(gapminder, continent, year)

summarise(gapminder_group, sd_pop = sd(pop))



