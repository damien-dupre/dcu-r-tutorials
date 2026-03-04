---
title: 'Chapter 5: Coding R with RStudio to Create Academic Outputs'
description:
  'This chapter introduces the basics of RStudio and RStudio Cloud to produce academic outputs with Rmarkdown files.'
prev: /chapter_04
next: null
type: chapter
id: 5
---

<exercise id="1" title="Introduction" type="slides">

<slides source="slide_05_01">
</slides>

</exercise>

<exercise id="2" title="Coding with RStudio Cloud" type="slides">

<slides source="slide_05_02">
</slides>

</exercise>

<exercise id="3" title="Exercise: First step with RStudio Cloud">

1. Go to RStudio Cloud's website https://rstudio.cloud and create an account if you don't have any (not necessary to use your email/name to practice).

2. Create a new Project and run some basic operations in a script file such as:

```
print("hello world")

2+2

2==2

my_first_rstudio_vector <- c("my", "first", "rstudio", "vector")

my_first_rstudio_vector
```

</exercise>

<exercise id="4" title="R Script" type="slides">

<slides source="slide_05_04">
</slides>

</exercise>

<exercise id="5" title="Exercise: Data analytics using R scripts">

In RStudio Cloud (or your local RStudio), open a new script.

Then install the packages {tidyverse} and {gapminder} if it's not already done.

Load both packages and use `options(scipen = 999)` to deactivate the scientific numbering.

Create a ggplot using the gapminder dataset and showing the relationship between lifeExp and gdpPercap.

Create a linear regression using the gapminder dataset with lifeExp as outcome variable and gdpPercap as predictor variable.

</exercise>

<exercise id="6" title="R Markdown" type="slides">

<slides source="slide_05_06">
</slides>

</exercise>

<exercise id="7" title="Exercise: Your first Rmarkdown report">

In RStudio Cloud (or your local RStudio), open a new Rmarkdown file with html output.

Knit this default document to check that everything is ok.

Modify the YAML, text and code to produce a report presenting the link between life expectancy and gdp. This report has to include at least one ggplot and one linear regression output.

</exercise>

<exercise id="8" title="Creating academic outputs" type="slides">

<slides source="slide_05_08">
</slides>

</exercise>

<exercise id="9" title="Exercise: Create your first Rmarkdown paper">

In RStudio Cloud (or your local RStudio), install the packages {tinytex}, {remotes}, {papaja} and {rticles}. Then run the code:

```
tinytex::install_tinytex()
```

Once it's done, wait the console to finish installing tinytex and restart the RStudio session (click session > Restart R).

Open a new Rmarkdown file, from template and choose one of the journal template provided by {rticles}.

Knit this default document to check that everything is ok.

Modify the journal template, with your name and details.

Load the libraries in the first R code chunk. Reproduce the document created in the exercise 7 including a ggplot of the gapminder data frame and a linear regression. Use the `apa_print()` function from the library {papaja} to create an inline code chunk which displays the results of this linear regression.

</exercise>

<exercise id="10" title="Conclusion" type="slides">

<slides source="slide_05_10">
</slides>

</exercise>