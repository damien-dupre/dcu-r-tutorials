---
type: slides
---

# Include ggplot in pipes

---

# Include ggplot in pipes

A very powerful way to create figures in R is to use a ggplot at the end of a data transformation pipe.

Indeed, having a data frame object as first argument of the `ggplot()` function is similar to using a pipe operator and chaining it to the `ggplot()` function:

```r
# this classic representation:
ggplot(gapminder, aes(gdpPercap, lifeExp, color = continent)) +
  geom_point()

# is the same as:
gapminder %>% 
  ggplot(aes(gdpPercap, lifeExp, color = continent)) +
  geom_point()
```

The layers are still added with the `+` symbol.

In this last code, it is also possible to modify the data frame using `filter()`, `select()`, `mutate()`, and `summarise()`.

---

# Filter to ggplot()

You can easily display only the data for a specific section of you interest. For example, let's filter the data only for Ireland:

```r
gapminder %>% 
  filter(country == "Ireland") %>% 
  ggplot(aes(gdpPercap, lifeExp, color = country)) +
  geom_line()
```

In the same way, it is possible to include more than one filter:

```r
gapminder %>% 
  filter(country == "Ireland" | country == "France") %>% 
  ggplot(aes(gdpPercap, lifeExp, color = country)) +
  geom_line()
```

`select()` is not that useful for `ggplot()` so it will not be presented here but it can always be included in the pipe chain if required.

---

# Mutate to ggplot()

If you need to display a variable that has to be created beforehand, you can always include a mutate statement in the chain.

For example, let's create the variable `gdpPercountry` which is the result of the multiplication between countries' population and countries' gdpPercap. Then let's display this information for Ireland and France:

```r
gapminder %>% 
  mutate(gdpPercountry = gdpPercap*pop) %>% 
  filter(country == "Ireland" | country == "France") %>% 
  ggplot(aes(gdpPercountry, lifeExp, color = country)) +
  geom_line()
```

<img src="img_03_06_01.png" width="75%">

---

# Summary to ggplot()

Finally, one of the most useful possibilities will be to summarise variables per groups and to display this information in figures.

For example, let's create the average population per continent and display how this average evolves with time:

```r
gapminder %>% 
  group_by(year, continent) %>% 
  summarise(m_pop = mean(pop)) %>% 
  ggplot(aes(year, m_pop, color = continent)) +
  geom_line()
```

<img src="img_03_06_02.png" width="75%">

---

# Summary to ggplot()

We can also compare the sum of the population by continent for the year 2007:

```r
gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarise(s_pop = sum(pop)) %>% 
  ggplot(aes(continent, s_pop, fill = continent)) +
  geom_col()
```

<img src="img_03_06_03.png" width="75%">

---

# dplyr() + ggplot() = poweR