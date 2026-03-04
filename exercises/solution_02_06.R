library(gapminder)
library(tidyverse)
# From the data frame object `gapminder`, select the columns `lifeExp` and 
# `gdpPercap` and rename them as life_expenctancy and gdp_per_capita:

select(gapminder, life_expenctancy = lifeExp, gdp_per_capita = gdpPercap)

# From the data frame object `gapminder`, remove the columns `pop` and `year` 
# and assign the result in a new object. Then display the value of this object:

new_data <- select(gapminder, -pop, -year)

new_data



