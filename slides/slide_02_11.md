---
type: slides
---


# The pipe operator %>%

---

# The pipe operator `%>%`

<img src="https://magrittr.tidyverse.org/logo.png?raw=true" width="10%">

Imagine that we want to summarise the population average and standard deviation only of Europe. Using what you know about {dplyr}, you might write code like this:

```r
gapminder_europe <- filter(gapminder, continent == "Europe")

gapminder_summary_europe <- summarise(gapminder_europe, 
  m_pop = mean(pop),
  sd_pop = sd(pop)
)
```

This code is a little frustrating to write because we have to give each intermediate data frame a name, even though we don’t care about it. Naming things is hard, so this slows down our analysis.

---

# The pipe operator `%>%` 

There’s another way to tackle the same problem with the pipe, `%>%`:

```r
gapminder_summary_europe <- gapminder %>% 
  filter(continent == "Europe") %>% 
  summarise(
    m_pop = mean(pop),
    sd_pop = sd(pop)
  )
```

<img src="img_02_11_01.png" width="75%">

---

# The pipe operator `%>%` 

This focuses on the transformations, not what’s being transformed, which makes the code easier to read. You can read it as a series of imperative statements: group, then summarise, then filter in the first example and: filter, then summarise in the second example. As suggested by this reading, a good way to pronounce `%>%` when reading code is **“then”**.

```r
gapminder_summary_europe <- gapminder %>% 
  filter(continent == "Europe") %>% 
  summarise(
    m_pop = mean(pop),
    sd_pop = sd(pop)
  )
```
Becomes

```
create the object "gapminder_summary_europe" from the object "gapminder", then
  filter all the values exactly equals to "Europe" in the continent variable, then
  summarise the average population as "m_pop" and the standard deviation as "sd_pop".
```

---

# The pipe operator `%>%` 

Behind the scenes, `x %>% f(y)` turns into `f(x, y)`, and `x %>% f(y) %>% g(z)` turns into `g(f(x, y), z)` and so on. You can use the pipe to rewrite multiple operations in a way that you can read left-to-right, top-to-bottom. We’ll use piping frequently from now on because it considerably improves the readability of code.

The following sequence can be read as:
1. Take x then
2. Use x as the input to the function f() then
3. Use f(x) as the input to the function g() then
4. Use g(f(x)) as the input to the function h()

```r
x %>% 
  f() %>% 
  g() %>% 
  h()
```

Working with the pipe is one of the key criteria for belonging to the tidyverse. The only exception is {ggplot2}.

---

# Now let's have a go with %>% ...