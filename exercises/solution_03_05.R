# Build a ggplot with the `gapminder` dataset and one `geom_boxplot()` layer 
# which contains the x as `continent`, y as `lifeExp` and color as `continent` 
# in its `aes()`. Use `year` as a facet variable, use a theme of your choice as 
# well and changes axises labels:

ggplot(gapminder) +
  geom_boxplot(aes(x = continent, y = lifeExp, color = continent)) +
  facet_wrap(~ year) +
  scale_x_discrete("", breaks = NULL) +
  scale_y_continuous("Life Expectancy") +
  scale_color_discrete("Continent") +
  theme_minimal()

# Build a ggplot with the `gapminder` dataset and:
# - One `geom_line()` layer which contains the x as `year`, y as `lifeExp` and 
#   group as `country` in its `aes()`,
# - One `geom_smooth()` layer which contains the x as `year`, y as `lifeExp` and 
#   color as `continent` in its `aes()` ,
# - One `facet_wrap()` for each continent.
# Also change the labels of the axises and use a theme of your choice as well:
  
ggplot(gapminder, aes(x = year, y = lifeExp)) +
  geom_line(aes(group = country)) +
  geom_smooth(aes(color = continent)) +
  facet_wrap(~continent, nrow = 1) +
  scale_x_continuous("Year (from 1952 to 2007)", breaks = c(1950, 1975, 2000)) +
  scale_y_continuous("Life Expectancy") +
  scale_color_discrete("Continent") +
  theme_minimal()


