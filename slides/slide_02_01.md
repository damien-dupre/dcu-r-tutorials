---
type: slides
---

# Introduction

---

# Entering the tidyverse

Most people who learned R before the tidyverse have likely started to feel a nibble of pressure to get aboard the tidyverse train. 

While the tidyverse is primarily made up of a set of super useful R packages ({ggplot2}, {dplyr}, {purrr}, {tidyr}, {readr}, {tibble}), it is also a new way of thinking about implementing “tidy” data analysis. 

If you combine tidy thinking with the tidyverse packages, you will inevitably become a master of tidy analysis. 

---

# Entering the tidyverse

Code written in the tidyverse style is much easier to read, and is more consistent than base R (e.g. the first argument of almost every tidyverse function is the data frame on which it acts, which allows us to make heavy use of something called “piping”). Base R, on the other hand, has a somewhat inconsistent mish-mash of function and argument styles.

The people that make up the tidyverse community are amazing. Much of the initial efforts of the tidyverse creator: Hadley Wickham, but these days there are a huge number of people who contribute to, maintain, and develop the tidyverse. The tidyverse is open-source and collaborative (which means that you - yes you - could contribute to it if you wanted to), and is hosted on the tidyverse github: https://github.com/tidyverse.

<img src="https://tidyverse.tidyverse.org/articles/tidyverse-logo.png?raw=true" width="30%">

---

# Entering the tidyverse

The goal of this tutorial is to summarise the overall goals of the tidyverse and to provide short introduction on each of the packages for data transformation.

It is important to remember that the tidyverse is constantly evolving. The best ways to keep up to date with the evolving tidyverse ecosystem is (1) to follow the RStudio blog (https://blog.rstudio.com/), and (2) start following R people on twitter. Mara Averick (@dataandme) and Hadley Wickham (@hadleywickham) are good people to follow.

---

# Tidy Data

Tidy data has a simple convention: put variables in the columns and observations in the rows.

<img src="https://ohi-science.org/data-science-training/img/tidy_data.png?raw=true" width="50%">

Right now we are going to use `dplyr` to wrangle this tidy-ish data set (the transform part of the cycle), and then come back to tidying messy data using `tidyr` once we’ve had some fun wrangling. These are both part of the `tidyverse` package.

As a part of the {tidyverse} package, {dplyr} and {tidyr} are loaded when {tidyverse} is loaded as well:

```r
library(tidyverse)
```
---

# Tidy Data

Conceptually, making data tidy first is really critical. Instead of building your analyses around whatever (likely weird) format your data are in, take deliberate steps to make your data tidy. 

When your data are tidy, you can use a growing assortment of powerful analytical and visualization tools instead of inventing home-grown ways to accommodate your data. 

This will save you time since you aren’t reinventing the wheel, and will make your work more clear and understandable to your collaborators (most importantly, Future You).

---

# {dplyr}'s main functions

There are five **{dplyr}** functions that you will use to do the vast majority of data manipulations:

- `filter()`: Subset observations (pick observations by their values)

- `select()`: Subset variables (pick variables by their names)

- `mutate()`: Make new variables (create new variables with functions of existing variables)

- `summarise()`: Summarise data (collapse many values down to a single summary)

These can all be used in conjunction with `group_by()` which changes the scope of each function from operating on the entire dataset to operating on it group-by-group. These five functions provide the verbs for a language of data manipulation.

---

# {dplyr}'s main functions

All verbs work similarly:

- The first argument is a data frame object name.
- The subsequent arguments describe what to do with the data frame. You can refer to columns in the data frame directly without using `$`.
- The result is a new data frame.

Together these properties make it easy to chain together multiple simple steps to achieve a complex result.

---

# The gapminder dataset

In February 2006, a Swedish physician and data advocate named Hans Rosling gave a TED talk titled “The best stats you’ve ever seen” where he presented global economic, health, and development data from the website [](www.gapminder.org) . 

For this tutorial, are going to use a dataset from this website. The dataset is stored in the {gapminder} package into an object called `gapminder`. 

Each row in this table corresponds to a country at a specific year. For each row, we have 6 columns:

- **country**: Name of country.
- **year**: Year of the observation (between 1952 and 2007).
- **pop**: Number of people living in the country.
- **continent**: Which of the five continents the country is part of. Note that “Americas” includes countries in both North and South America and that Antarctica is excluded.
- **lifeExp**: Life expectancy in years.
- **gdpPercap**: Gross domestic product (in US dollars).

---

# What about having a look at this gapminder dataset?
