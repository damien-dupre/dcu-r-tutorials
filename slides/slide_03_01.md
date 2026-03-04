---
type: slides
---


# Introduction

---

# Introduction

Visualising data is one of the most important tasks facing the data analyst. It’s important for two distinct but closely related reasons. 

Firstly, there’s the matter of drawing “presentation graphics”: displaying your data in a clean, visually appealing fashion makes it easier for your reader to understand what you’re trying to tell them.

Equally important, perhaps even more important, is the fact that drawing graphs helps you to understand the data. To that end, it’s important to draw “exploratory graphics” that help you learn about the data as you go about analysing it. These points might seem pretty obvious, but I cannot count the number of times I’ve seen people forget them.

---

# Introduction

We’ll use the {ggplot2} package, as it provides an easy way to customise your plots. {ggplot2} is rooted in the data visualisation theory known as the grammar of graphics (Wilkinson 2005).

As a part of the {tidyverse} package, {ggplot2} is loaded when {tidyverse} is loaded as well:

```r
library(tidyverse)
```

---

# The gapminder dataset

In February 2006, a Swedish physician and data advocate named Hans Rosling gave a TED talk titled “The best stats you’ve ever seen” where he presented global economic, health, and development data from the website [](www.gapminder.org). 

Each row in this table corresponds to a country in a specific year. For each row, we have 6 columns:

- **country**: Name of country.
- **year**: Year of the observation (between 1952 and 2007).
- **pop**: Number of people living in the country.
- **continent**: Which of the five continents the country is part of. Note that “Americas” includes countries in both North and South America and that Antarctica is excluded.
- **lifeExp**: Life expectancy in years.
- **gdpPercap**: Gross domestic product (in US dollars).

---

# Let's have a look at {ggplot}'s layers
