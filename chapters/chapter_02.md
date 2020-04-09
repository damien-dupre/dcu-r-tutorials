---
title: 'Chapter 2: Data Transformation'
description:
  'This chapter introduces the basic concepts of R tidyverse syntax such as filter, select, mutate, summarise and more importantly how to use the pipe operator %>%.'
prev: /chapter_01
next: /chapter_03
type: chapter
id: 2
---

<exercise id="1" title="Introduction" type="slides">

<slides source="slide_02_01">
</slides>

</exercise>

<exercise id="2" title="Exercise: A look at the gapminder data frame object">

First, we need to load the package {gapminder} with the function library to obtain the `gapminder` data frame object. Then, we can have a look at the `gapminder` object structure using the function `str()` has well as at its first rows/observations using the function `head()`:

<codeblock id="02_02">

Replace the _ _ _ with the name of the package in library( _ _ _ ).

Replace the _ _ _ with the name of the data frame object in str( _ _ _ ) and head( _ _ _ ).

</codeblock>

</exercise>

<exercise id="3" title="The filter() function" type="slides">

<slides source="slide_02_03">
</slides>

</exercise>

<exercise id="4" title="Exercise: Practice with filter()">

Use the filter() function to keep specific observations from the gapminder data frame object:

<codeblock id="02_04">

Replace the _ _ _ with the values in the comments:

filter(gapminder, year == _ _ _ & pop > _ _ _)

filter(gapminder, continent == _ _ _ & lifeExp < _ _ _)

</codeblock>

</exercise>

<exercise id="5" title="The select() function" type="slides">

<slides source="slide_02_05">
</slides>

</exercise>

<exercise id="6" title="Exercise: Practice with select()">

Use the select() function to keep specific variables from the gapminder data frame object:

<codeblock id="02_06">

Replace the _ _ _ with the values in the comments:

select(gapminder, life_expectancy = _ _ _ , gdp_per_capita = _ _ _)

new_data <- select(gapminder, -_ _ _ , -_ _ _)

</codeblock>

</exercise>

<exercise id="7" title="The mutate() function" type="slides">

<slides source="slide_02_07">
</slides>

</exercise>

<exercise id="8" title="Exercise: Practice with mutate()">

Use the mutate() function to create new variables from the existing gapminder variables:

<codeblock id="02_08">

Replace the _ _ _ with the values in the comments:

mutate(gapminder, _ _ _ = toupper(_ _ _))

europe_2007 <- filter(gapminder, continent == _ _ _ & year == _ _ _)

mutate(europe_2007, _ _ _ = pop/sum(_ _ _))

</codeblock>

</exercise>

<exercise id="9" title="The summarise() function" type="slides">

<slides source="slide_02_09">
</slides>

</exercise>

<exercise id="10" title="Exercise: Practice with summarise()">

Use the summarise() function to create statistical summaries from existing variables of the gapminder data frame object:

<codeblock id="02_10">

Replace the _ _ _ with the values in the comments:

gapminder_group <- group_by(gapminder, _ _ _ , _ _ _)

summarise(_ _ _ , m_pop = mean(_ _ _))

gapminder_group <- group_by(gapminder, _ _ _ , _ _ _)

summarise(_ _ _ , sd_pop = sd(_ _ _))

</codeblock>

</exercise>

<exercise id="11" title="The the pipe operator %>%" type="slides">

<slides source="slide_02_11">
</slides>

</exercise>

<exercise id="12" title="Exercise: Practice with the pipe operator %>%">

Use the **the pipe** operator `%>%` to create transformation chains from the gapminder data frame object:

<codeblock id="02_12">

Replace the _ _ _ with the values in the comments:

gapminder %>% 
  group_by(_ _ _ , _ _ _) %>% 
  summarise(m_pop = mean(_ _ _))
  
gapminder %>% 
  group_by(_ _ _ , _ _ _) %>% 
  summarise(sd_pop = sd(_ _ _))

</codeblock>

</exercise>

<exercise id="13" title="Pivot Longer or Pivot Wider" type="slides">

<slides source="slide_02_13">
</slides>

</exercise>

<exercise id="14" title="Exercise: Practice pivot">

Use the pivot_longer() and pivot_wider() functions to reshape the data frame objects gapminder and gapminder_country:

<codeblock id="02_14">

Replace the _ _ _ with the values in the comments:

gapminder %>% 
  select(_ _ _ , _ _ _ , _ _ _) %>% 
  pivot_wider(names_from = _ _ _ , values_from = _ _ _)
  
gapminder_country %>% 
  pivot_longer(names_to = _ _ _ , values_to = _ _ _)

</codeblock>

</exercise>

<exercise id="15" title="Conclusion">

Congratulations! You’ve completed the “Data Science with tidyverse” portion of this tutorial. 

Remember, we have started this chapter by running `library(tidyverse)`, instead of loading the various component packages individually. The tidyverse “umbrella” package gets its name from the fact that all the functions in all its packages are designed to have common inputs and outputs: data frames are in “tidy” format. This standardization of input and output data frames makes transitions between different functions in the different packages as seamless as possible. For more information, check out the [tidyverse.org](tidyverse.org) webpage for the package.

If you want to learn more about using the {dplyr} and {tidyr} package, we suggest that you check out [**RStudio’s Cheat Sheet**](https://rstudio.com/resources/cheatsheets/).

</exercise>