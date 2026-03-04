---
type: slides
---


# The grammar of graphics

---

# The grammar of graphics

Each language has a grammar consisting of types of words and the rules with which to string them together into sentences. If a sentence is grammatically correct, we’re able to parse it, even though that doesn’t ensure that it’s interesting, beautiful, or even meaningful.

Similarly, plots can be divided up into their core components, which come together via a set of rules.

**“the grammar of graphics”** (the “gg” in ggplot) defines a set of rules for constructing statistical graphics by combining different types of layers. 

Some of the major components are :

- Data
- Geometries
- Mapping
- Themes

---

# Data

The **data** are the actual variables we’re plotting, which we pass to ggplot through the data argument. As you’ve learned, ggplot takes a data frame in which each column is a variable.

```r
ggplot(data = my_dataframe)
```

**In a similar perspective as the pipe operator does, layers in {ggplot2} are added with the symbol `+`.**

---

# Data

Let's try to use the gapminder data:

```r
ggplot(data = gapminder)
```

<img src="img_03_02_01.png" width="75%">

Only a grey frame is displayed. This is because we need to define the axes (aesthetic mapping) and their corresponding layers.

---

# Geometries

**Geometries**, which are shapes we use to represent our data. There is a dedicated function for every type of shape to plot but all start with `geom_`

|function          |shape    |
|------------------|---------|
|`geom_point()`    |point    |
|`geom_line()`     |line     |
|`geom_bar()`      |bar      |
|`geom_histogram()`|histogram|
|`geom_boxplot()`  |boxplot  |
|...               |...      |

The list is very long but here are the main ones. Multiple **geometries** can be added as layers by using the same `+` symbol. 

---

# Geometries

*Example for scatter plots:*

```r
ggplot(data = my_dataframe) +
  geom_point() 
```

*Example for line graph:*

```r
ggplot(data = my_dataframe) +
  geom_line() 
```

*Example for bar graph:*

```r
ggplot(data = my_dataframe) +
  geom_bar() 
```

By default **geometries** inherit their mapping from the frame aesthetics (the ones in the `ggplot()` function). However it is possible to define specific aesthetics for each layers for more customisation.

---

# Aesthetic mapping

The **aesthetic mapping** refers to the frame of the plot, `x` for the variable in the x-axis and `y` for the variable in the y-axis. There are many more aesthetics such as `color`, `fill` and `group` but let's focus on the x and y axes for the moment. The mapping is performed by a function in {ggplot2} called `aes()` for aesthetics. 

This is an essential concept to remember, the mapping of a plot (frame axes) is built from aesthetics.

```r
ggplot(data = my_dataframe) +
  geom_point(mapping = aes(x = my_xaxis_variable, y = my_yaxis_variable))
```

---

# Aesthetic mapping

Again, the arguments names of the `ggplot()` function and layers can be omitted if filled in the right order:

```r
ggplot(my_dataframe) +
  geom_point(aes(my_xaxis_variable, my_yaxis_variable))
```

Obviously, some type of layers are not suitable for all aesthetics, it depends on how many variables are included and their type (categorical or continuous). 

---

# Aesthetic mapping

Aesthetic mapping represents not only the variables defined as x-axis and y-axis but also, colours of borders (colors), colours of shapes (fill), shapes ...

```r
ggplot(data = my_dataframe) +
  geom_point(mapping = aes(
    x = my_xaxis_variable, 
    y = my_yaxis_variable,
    color = my_color_variable,
    fill = my_fill_variable,
    shape = my_shape_variable,
    size = my_size_variable
  )
)
```

---

# Aesthetic mapping

For example, the following code is adding not only a x- and y-axis to a scatter plot, but also colours to the points:

```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = gdpPercap, y = lifeExp, color = continent))

```

<img src="img_03_02_02.png" width="75%">

---

# Aesthetic mapping

Instead of using `continent` variable as colour mapping, the `continent` variable is used as a shape mapping:

```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = gdpPercap, y = lifeExp, shape = continent))
```

<img src="img_03_02_03.png" width="75%">

We’ll go over other aspects of the grammar of graphics (such as facets, statistics, and coordinates) as they come up. Let’s start visualizing some data by first choosing a theme, which describes all of the non-data ink in our plot, like grid lines and text.

---

# Themes

Now, to make the plot more professional, let's remove that standard grey background using a different theme. Many themes come built into the ggplot2 package. My preference is `theme_bw()` but once you start typing `theme_` a list of options will pop up.

```r
ggplot(gapminder) +
  geom_point(aes(x = gdpPercap, y = lifeExp, color = continent)) +
  theme_bw()
```

<img src="img_03_02_04.png" width="75%">

---

# Themes

Built-in ggplot2 themes includes `theme_bw()`, `theme_classic()`, `theme_minimal()`, `theme_dark()`, `theme_light()`, ... 

Try them in the following exercises.

---

# Time to visualise ...