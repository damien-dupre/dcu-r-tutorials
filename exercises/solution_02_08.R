library(gapminder)
library(tidyverse)
# From the data frame object `gapminder`, create a new column called 
# `country_upper` with the function `toupper()` using the column `country`:

mutate(gapminder, country_upper = toupper(country))

# From the data frame object `gapminder`, filter the countries in Europe and 
# their values for 2007. Assign the result to an new object called `europe_2007`. 
# Then create a new column called `europe_prop` corresponding to the value of 
# the column `pop` divided by the total population in Europe in 2007.

europe_2007 <- filter(gapminder, continent == "Europe" & year == 2007)

mutate(europe_2007, europe_prop = pop/sum(pop))

