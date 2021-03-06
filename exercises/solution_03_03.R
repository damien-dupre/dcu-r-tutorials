# Build a ggplot with the `gapminder` dataset and one `geom_boxplot()` layer 
# which contains the x as `continent`, y as `lifeExp` and color as `continent` 
# in its `aes()`. Use a theme of your choice as well:

ggplot(gapminder) +
  geom_boxplot(aes(x = continent, y = lifeExp, color = continent)) +
  theme_minimal()

# Build a ggplot with the `gapminder` dataset and one `geom_col()` layer which 
# contains the x as `year`, y as `pop` and fill as `continent` in its `aes()`. 
# Use a theme of your choice as well:

ggplot(gapminder) +
  geom_col(aes(x = year, y = pop, fill = continent)) +
  theme_dark()



