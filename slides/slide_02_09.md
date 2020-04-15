---
type: slides
---

# The summarise() function

---

# The `summarise()` function

The last key verb is `summarise()`. It collapses a data frame to a single row:

```r
summarise(gapminder, m_pop = mean(pop))
```
<img src="img_02_09_01.png" width="25%">

`summarise()` is not terribly useful unless we pair it with `group_by()`. This changes the unit of analysis from the complete dataset to individual groups. Then, when you use the dplyr verbs on a grouped data frame they’ll be automatically applied “by group”. For example, if we applied exactly the same code to a data frame grouped by year, we get the average world population per year:

```r
gapminder_by_year <- group_by(gapminder, year)

summarise(gapminder_by_year, m_pop = mean(pop))
```

<img src="img_02_09_02.png" width="25%">

---

# The `summarise()` function

Together `group_by()` and `summarise()` provide one of the tools that you’ll use most commonly when working with dplyr: grouped summaries.

---

# To sum up, let's summarise some data ...