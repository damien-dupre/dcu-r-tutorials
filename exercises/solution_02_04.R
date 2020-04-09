library(gapminder)
library(tidyverse)
# From the data frame object `gapminder`, filter the countries which population 
# is higher than 1,000,000,000 in 2007:

filter(gapminder, year == 2007 & pop > 1000000000)

# From the data frame object `gapminder`, filter the countries in Europe which 
# life expectancy is lower than 60 years:

filter(gapminder, continent == "Europe" & lifeExp < 60)



