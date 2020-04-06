---
type: slides
---

# The select() function

---

# The `select()` function

It’s not uncommon to get datasets with hundreds or even thousands of variables. In this case, the first challenge is often narrowing in on the variables you’re actually interested in. `select()` allows you to rapidly zoom in on a useful subset using operations based on the names of the variables. Again the first argument is the name of the data frame object to process and the following arguments are the name of the columns to keep.

`select()` is not terribly useful with the `gapminder` data because we only have 6 variables, but you can still get the general idea:

```r
select(gapminder, country, year, pop)
```
<img src="img_02_05_01.png" width="75%">
---

# Keep and remove variables

The `select()` function can not only be used to keep specific variables but it can also be used to remove them from the data frame object. To do so, just add the `-` sign in front of the variable name to be removed. For example:

```r
gapminder_keep <- select(gapminder, country, year, pop)

gapminder_remove <- select(gapminder, -continent, -lifeExp, -gdpPercap)

```

In the previous example the objects `gapminder_keep` and `gapminder_remove` should have the same number of variable and therefore be equal.

---

# Select and rename variables

While you are keeping only specify variables with `select()`, these variables can also be renamed on the same time. It is counter-intuitive but the new name has to be first followed by the `=` sign and the old name such as:

```r
select(gapminder, country, population = pop, measure_year = year)
```

<img src="img_02_05_02.png" width="75%">

---

# Become a data bouncer, sort of ...