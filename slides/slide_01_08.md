---
type: slides
---

# Data Frames

---

# The most important object type

Often in a dataset we will have a number of different variables that we want to work with. Instead of having a different named object that stores each one, it is often useful to combine all of the separate variables into a single object, which is referred to as a **data frame**.

If you are familiar with a spreadsheet (say from Microsoft Excel) then you already have a basic understanding of a data frame.

---

# The most important object type

Let’s have a look at the size and population of the 12 counties in the province of Leinster. We could start by creating an object for each one, making sure that they are in the same order for each of the variables:

```r
leinster_county_name <- c("Carlow", "Dublin", "Kildare", "Kilkenny", "Laois", "Longford", "Louth", "Meath", "Offaly", "Westmeath", "Wexford", "Wicklow")

leinster_county_size <- c(896, 921, 1693, 2061, 1719, 1091, 820, 2342, 2000, 1838, 2352, 2024)

leinster_county_population <- c(56932, 1347359, 222504, 99232, 84697, 40873, 128884, 195044, 77961, 88770, 149722, 142425)
```

We can then combine these into a single data frame, using the `data.frame()` function. I like to use "_df" in the names of data frames just to make clear that it’s a data frame, so we will call this one “leinster_df”:

```r
leinster_df <- data.frame(
  name = leinster_county_name, 
  size = leinster_county_size, 
  population = leinster_county_population
)
```

---

# The most important object type

We can view the data frame by using the `View()` function or display just a sample with the `head()` function:

```r
head(leinster_df)
```

---

# The `$` operator

Each of the columns in the data frame contains one of the variables, with the name that we gave it when we created the data frame. We can access each of those columns using the `$` operator. For example, if we wanted to access the population variable, we would combine the name of the data frame with the name of the variable as follows:

```r
leinster_df$population
```

This is just like any other vector, in that we can refer to its individual values using square brackets as we did with regular vectors:

```r
leinster_df$population[3]
```

---

# Subsetting data frames

The easiest way to obtain a value from a data frame is to only use the square brackets `[]`. Contrary to the subset of a vector, subsetting a data frame involves a row number and a column number as follow `dataframe_name[row_number, col_number]`. For example:

```r
leinster_df[2, 1]
```

If one of `row_number` or `col_number` is not included, R will display all the values for the element indexed (i.e, all the rows if `row_number` is missing and all the columns if `col_number`):

```r
leinster_df[2, ]
```

```r
leinster_df[, 1]
```
---

# Data frame structure

Because R can automatically convert type of vectors when manipulating a data frame, it is always useful to check its structure with the `str()` function:

```r
str(leinster_df)
```

`str()` displays a summary of your object. If everything is going well we have a "data.frame" type object with 12 observations (rows) and 3 variables (columns). You can see that, as expected, size and population have the class "num" for numeric. However the variable name is not a class "character" but "factor". A "factor" is a vector made of character strings which are ordered according specific level (here the alphabetical level). Whereas vectors of characters and factors are very similar, certain functions are only using one type or the other.

---

# Data frame structure

If you want to convert a variable, use the functions `as.character()`, `as.factor()`, `as.numeric()` on a variable to overwrite the type of this variable. For example:

```r
leinster_df$name <- as.character(leinster_df$name)
str(leinster_df)
```

---

# Ready for your first data frame?