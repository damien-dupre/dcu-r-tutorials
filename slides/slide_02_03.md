---
type: slides
---

# The filter() function

---

# The `filter()` function

You will want to isolate bits of your data; maybe you want to only look at a single country or a few years. R calls this subsetting.

`filter()` is a function in the **{dplyr}** package that takes logical expressions and returns the rows for which all are TRUE. Remember your logical expressions? We’ll use `<` and `==` here.

`filter()` allows you to subset observations based on their values. The first argument is the name of the data frame. The second and subsequent arguments are the condition that filter the data frame.

For example, let's filter the dataset by keeping only the values for Ireland:

```r
filter(gapminder, country == "Ireland")
```

<img src="img_02_03_01.png" width="75%">
---

# The `filter()` function

Importantly, Column/Variable names are not between quotation marks in the Tidyverse whereas the value to filter is.

The reason is because the Column/Variable is an object containing multiple values inside the data frame object.

At the contrary, the string "Ireland" does not exist in our environment and will not be saved. It is here just as a value, which explains the quotation marks.

---

# Comparisons

To use filtering effectively, you have to know how to select the observations that you want using the comparison operators. R provides the standard suite: `>`, `>=`, `<`, `<=`, `!=` (not equal), and `==` (exactly equal).

When you’re starting out with R, the easiest mistake to make is to use `=` instead of `==` when testing for equality. When this happens you’ll get an informative error:

```r
filter(gapminder, country = "Ireland")
```

```out
Error: `country` (`country = 1`) must not be named, 
  do you need `==`?
```

---

# Logical operators

Multiple arguments to `filter()` are combined with “and”: every expression must be true in order for a row to be included in the output. For other types of combinations, you’ll need to use Boolean operators yourself: `&` is “and”, `|` is “or”, and `!` is “not”. Here are the complete set of Boolean operations.

<img src="https://d33wubrfki0l68.cloudfront.net/01f4b6d39d2be8269740a3ad7946faa79f7243cf/8369a/diagrams/transform-logical.png?raw=true" width="50%">

---

# Logical operators

For example, the following code will filter both Ireland and France data:

```r
filter(gapminder, country == "Ireland" | country == "France")
```
<img src="img_02_03_02.png" width="75%">

---

# Logical operators

The following code will filter only Ireland data without the year 2007:

```r
filter(gapminder, country == "Ireland" & year != 2007)
```
<img src="img_02_03_03.png" width="75%">
---

# Multiple filters

Whereas the `filter()` can include as many conditions as possible, it is also possible to store the result of the `filter()` function in a new object and then to apply a new filter on this new object.

```r
gapminder_ireland <- filter(gapminder, country == "Ireland")

gapminder_ireland_2007 <- filter(gapminder_ireland, year == 2007)
```

A choice is offered to you, you can either overwrite the original object by using the same object name or to use a different object name.

---

# Let's apply some filters ...