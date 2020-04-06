library(gapminder)
library(tidyverse)
# Display the evolution of the average life expectancy by continent according 
# the time:

_ _ _ %>% 
  group_by(_ _ _ , _ _ _) %>% 
  summarise(m_exp = mean(_ _ _)) %>% 
  ggplot(aes(year, m_exp, color = _ _ _)) +
  geom_line(...

# Display the relationship between gdpPercap and lifeExp for each year from 2000 
# and only for european countries:

_ _ _ %>% 
  group_by(_ _ _ , _ _ _) %>% 
  summarise(m_exp = mean(_ _ _)) %>% 
  ggplot(aes(year, m_exp, color = _ _ _)) +
  geom_line(...


