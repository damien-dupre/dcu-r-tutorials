library(gapminder)
library(tidyverse)

# From the data frame object `gapminder`, `pivot_wider()` the names from 
# `country` and the values from `lifeExp` into an object called `gapminder_country`. Be careful to select only the `year`, 
# `country`, `lifeExp` variables before pivoting:

gapminder_country <- gapminder %>% 
  select(country, year, lifeExp) %>% 
  pivot_wider(names_from = country, values_from = lifeExp)

# From the data frame object `gapminder_country`, `pivot_longer()` the names to 
# `country` and the values to `lifeExp` in order to find the original data:

gapminder_country %>% 
  pivot_longer(names_to = "country", values_to = "lifeExp")


