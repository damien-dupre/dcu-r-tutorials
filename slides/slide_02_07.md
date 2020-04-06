---
type: slides
---

# The mutate() function

---

# The `mutate()` function

Besides selecting sets of existing columns, it’s often useful to add new columns that are functions of existing columns. That’s the job of `mutate()`. Once again the first argument is the name of the data frame object to modify, then the second argument is the name of the column to create followed by the `=` sign and the condition creating the new values.

For example we can create a new column called `gdp_total` which contains the values resulting from the multiplication between `pop` and `gdpPercap`:

```r
mutate(gapminder, gdp_total = pop * gdpPercap)
```

<img src="img_02_07_01.png" width="75%">

---

# Useful creation functions

`mutate()` always adds new columns at the end of your dataset so we’ll start by creating a narrower dataset so we can see the new variables. `mutate()` can also create multiple columns in the same statement, they just have to be separated by a coma `,`.

There are many functions for creating new variables that you can use with `mutate()`. The key property is that the function must be vectorised: it must take a vector of values as input, return a vector with the same number of values as output. 

These are all vectorised, using the so called “recycling rules”. If one parameter is shorter than the other, it will be automatically extended to be the same length. This is most useful when one of the arguments is a single number or single character:

```r
mutate(gapminder, number_1 = 1, letter_a = "a")
```

<img src="img_02_07_02.png" width="75%">

---

# Example of useful functions

There’s no way to list every possible function that you might use, but here’s a selection of functions that are frequently useful:

- Arithmetic operators: `+`, `-`, `*`, `/`, `^`. 

- Logs: `log()`, `log2()`, `log10()`. 

- Offsets: `lead()` and `lag()`.

- Cumulative and rolling aggregates such as: `cumsum()`, `cumprod()`, `cummin()`, `cummax()` and `cummean()` from {dplyr}.

- Billions of other functions.

Base R, as well as the pre-installed R packages and all the others that you can download from CRAN, github or anywhere else, have an uncountable number of functions that can be used. You can even create your own function, which is usually very helpful.

---

# Time for Mutating some variables ...