---
type: slides
---


# Pivot Longer or Pivot Wider

---

# Pivot Longer or Pivot Wider

Sometimes we need to reformat or reshape our data in order to analyse it or visualize it in a specific way. Two tidyverse functions, `pivot_longer()` and `pivot_wider()`, help us to do this.

![](https://thinkr.fr/wp-content/uploads/pivot.png?raw=true)

---

# Pivot Wider

In the `gapminder` dataset, we currently have a column/variable year and the population for the same country is repeated according multiple rows. This is a "Tidy" format, but sometimes it is handy to have a column per year for the same country: this is a "wide" format. Wide means that the value of a specific variable is spread on multiple columns.

To obtain this wider version of the dataset, it is possible to use the `pivot_wider()` function from the {tidyr} package.

![](https://d33wubrfki0l68.cloudfront.net/8350f0dda414629b9d6c354f87acf5c5f722be43/bcb84/images/tidy-8.png?raw=true)

---

# Pivot Wider

`pivot_wider()` has 3 main arguments:
1. The dataset to pivot (but it can be omitted if it follows a pipe operator)
2. `names_from` which corresponds to the variable converted to column names
3. `values_from` which corresponds to the values inside the new variables

For example, the following code will spread the years as new columns displaying the population per country:

```r
gapminder_wider <- gapminder %>% 
  select(country, year, pop) %>% 
  pivot_wider(names_from = year, values_from = pop)
```
<img src="img_02_13_01.png" width="75%">
---

# Pivot Longer

Usually R is working with long tables, not wide. For this reason it is very useful to reorganise a dataset with the `pivot_longer()` function.

![](https://i0.wp.com/cmdlinetips.com/wp-content/uploads/2020/02/pivot_longer_wide_to_long_tidy.jpg?raw=true)

---

# Pivot Longer

`pivot_longer()` has 4 main arguments:
1. The dataset to pivot (but it can be omitted if it follows a pipe operator)
2. `names_to` which corresponds to the column names aggregated in a new variable
3. `values_to` which corresponds to the values aggregated in a new variable
4. The last argument `cols` corresponds to the column names to be aggregated. Observe how we set this to `-country` indicating that we don’t want to “tidy” the country but all the other variables

```r
gapminder_longer <- gapminder_wider %>% 
  pivot_longer(names_to = "year", values_to = "pop", cols = -country)
```
<img src="img_02_13_02.png" width="75%">


For `pivot_longer()` the new variables are in quotation marks because they are not present in the existing `gapminder_wider` table whereas `country` is and has no quotation mark.

---

# Pivoting is challenging, here is some practice ...