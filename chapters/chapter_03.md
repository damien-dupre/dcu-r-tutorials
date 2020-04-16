---
title: 'Chapter 3: Data Visualisation'
description:
  'This chapter introduces the basics concepts of the {ggplot2} package for data visualisation in the tidyverse.'
prev: /chapter_02
next: /chapter_04
type: chapter
id: 3
---

<exercise id="1" title="Introduction" type="slides">

<slides source="slide_03_01">
</slides>

</exercise>

<exercise id="2" title="The grammar of graphics" type="slides">

<slides source="slide_03_02">
</slides>

</exercise>

<exercise id="3" title="Exercise: Practice the grammar of graphics">

Build a ggplot visualisation from the gapminder data frame object with the requirements in the following code comments:

<codeblock id="03_03">

Replace the _ _ _ with the names in the commented code.

```
ggplot(_ _ _) +
  geom_boxplot(aes(x = _ _ _ , y = _ _ _ , color = _ _ _)) +
  theme_minimal()

ggplot(_ _ _) +
  geom_col(aes(x = _ _ _ , y = _ _ _ , fill = _ _ _)) +
  theme_dark()
```
</codeblock>

</exercise>

<exercise id="4" title="Customising plots" type="slides">

<slides source="slide_03_04">
</slides>

</exercise>

<exercise id="5" title="Exercise: Practice the customisation">

Build a ggplot visualisation from the gapminder data frame object with the requirements in the following code comments:

<codeblock id="03_05">

Replace the _ _ _ with the names in the commented code.

```
ggplot(_ _ _) +
  geom_boxplot(aes(x = _ _ _ , y = _ _ _ , color = _ _ _)) +
  facet_wrap(~ _ _ _) +
  scale_x_discrete(_ _ _, breaks = NULL) +
  scale_y_continuous(_ _ _) +
  scale_color_discrete(_ _ _) +
  theme_minimal()

ggplot(_ _ _ , aes(x = _ _ _ , y = _ _ _)) +
  geom_line(aes(group = _ _ _)) +
  geom_smooth(aes(color = _ _ _)) +
  facet_wrap(~_ _ _, nrow = 1) +
  scale_x_continuous(_ _ _, breaks = c(1950, 1975, 2000)) +
  scale_y_continuous(_ _ _) +
  scale_color_discrete(_ _ _) +
  theme_minimal()
```
</codeblock>

</exercise>

<exercise id="6" title="Include ggplot in pipes" type="slides">

<slides source="slide_03_06">
</slides>

</exercise>

<exercise id="7" title="Exercise: Practice the pipes with ggplot">

Build a ggplot visualisation from the gapminder data frame object with the requirements in the following code comments:

<codeblock id="03_07">

Replace the _ _ _ with the names in the commented code.

```
_ _ _ %>% 
  group_by(_ _ _ , _ _ _) %>% 
  summarise(m_exp = mean(_ _ _)) %>% 
  ggplot(aes(year, m_exp, color = _ _ _)) +
  geom_line() +
  scale_y_continuous(_ _ _) +
  scale_x_continuous(_ _ _) +
  scale_fill_discrete(_ _ _) +
  theme_bw()

_ _ _ %>% 
  group_by(_ _ _ , _ _ _) %>% 
  summarise(m_exp = mean(_ _ _)) %>% 
  ggplot(aes(year, m_exp, color = _ _ _)) +
  geom_line() +
  scale_y_continuous(_ _ _) +
  scale_x_continuous(_ _ _) +
  scale_fill_discrete(_ _ _) +
  theme_bw()
```
</codeblock>

</exercise>