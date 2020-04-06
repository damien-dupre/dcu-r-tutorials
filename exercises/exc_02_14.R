# From the data frame object `gapminder`, summarise the population average with 
# the `mean()` function by `year` and by `continent` by adding the second 
# grouping variable after the first one (use a coma to separate them) and by 
# using the pipe operator:

_ _ _ 

# From the data frame object `gapminder`, `pivot_wider()` the names from 
# `country` and the values from `lifeExp`. Be careful to select only the `year`, 
# `country`, `lifeExp` variables before pivoting:

_ _ _  %>% 
  select(_ _ _ , _ _ _ , _ _ _ ) %>% 
  pivot_wider(_ _ _  = _ _ _ , _ _ _  = _ _ _ )

# From the data frame object `gapminder_country`, `pivot_longer()` the names to 
# `country` and the values to `lifeExp` in order to find the original data:

_ _ _  %>% 
  pivot_longer(_ _ _  = _ _ _ , _ _ _  = _ _ _ )


