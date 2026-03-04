# Remember the gapminder dataset? Load the package `gapminder` with the
# `library()` function, use `str()` and `head()` to have a quick look at the
# dataset. Then test the following hypothesis:
# - When countries' population increase, life expectancy increase as well
# - When countries' GDP per capita increase, life expectancy increase as well
# - There is an interaction effect between countries' population and GDP per
#   capita on life expectancy

library(gapminder)

str(gapminder)

head(gapminder)

gapminder_regression <- lm(formula = lifeExp ~ pop * gdpPercap, data = gapminder)

summary(gapminder_regression)
