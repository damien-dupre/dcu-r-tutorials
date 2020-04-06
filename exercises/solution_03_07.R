# Display the evolution of the average life expectancy by continent according 
# the time:

gapminder %>% 
  group_by(year, continent) %>% 
  summarise(m_exp = mean(lifeExp)) %>% 
  ggplot(aes(year, m_exp, color = continent)) +
  geom_line() +
  scale_y_continuous("Average life expectancy (year)") +
  scale_x_continuous("") +
  scale_fill_discrete("Continent") +
  theme_bw()

# Display the relationship between gdpPercap and lifeExp for each year from 2000 
# and only for european countries:

gapminder %>% 
  filter(continent == "Europe" & year >= 2000) %>% 
  ggplot(aes(gdpPercap, lifeExp, color = as.factor(year))) +
  geom_point() +
  scale_y_continuous("Life expectancy (year)") +
  scale_x_continuous("GDP per Capita") +
  scale_color_discrete("") +
  facet_wrap(~year)


