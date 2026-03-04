---
type: slides
---

# Introduction

---

# Introduction

The goal this tutorial is to provide a simple introduction to hypothesis testing with linear regression models for beginners. In the context of this tutorial, Bayesian or non-linear models will not be presented. 

This introduction is also limited to the most common linear regression models which suppose a Gaussian distribution of the residuals and which do not include random effects. 

We are going to use models to partition data into patterns and residuals. Strong patterns will hide subtler trends, so we’ll use models to help peel back layers of structure as we explore a dataset.
---

# Tidyverse framework

Let’s load all the packages needed for this tutorial (this assumes you’ve already installed them). Loading the {tidyverse} package by running `library(tidyverse)` loads the following commonly used data science packages all at once:

- {ggplot2} for data visualization
- {dplyr} for data wrangling
- {tidyr} for converting data to “tidy” format
- {readr} for importing spreadsheet data into R
- As well as the more advanced {purrr}, {tibble}, {stringr}, and {forcats} packages

---

# References

Once again, this tutorial uses content and examples from the following free online books. They are perfect for beginners, feel free to check them out for further information:

- [R for Data Science](https://r4ds.had.co.nz/) by Wickham and Grolemund (2017)
- [YaRrr! The Pirate’s Guide to R](https://bookdown.org/ndphillips/YaRrr/) by Phillips (2018)
- [A ModernDive into R and the tidyverse](https://moderndive.com/) by Ismay and Kim (2019)
- [Learning statistics with R](https://learningstatisticswithr.com/book/) by Navarro (2019)
- [Getting Used to R, RStudio, and R Markdown](https://rbasics.netlify.com/) by Kennedy (2019)
- [Introduction to Open Data Science](https://ohi-science.org/data-science-training/) by the Ocean Health Index Team (2019)
- [Statistical Thinking for the 21st Century](https://statsthinking21.org/) by Poldrack (2020)

---

# Let's formulate some hypotheses ...
