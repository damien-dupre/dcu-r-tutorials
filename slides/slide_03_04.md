---
type: slides
---

# Customising plots

---

# Customising plots

Take a look at the ggplot2 [cheat sheet](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf), and think of ways you could improve the plot.

<img src="https://d33wubrfki0l68.cloudfront.net/21d683072b0c21cbd9b41fc0e37a587ad26b9525/cbf41/wp-content/uploads/2018/08/data-visualization-2.1.png" width="75%">

---

# Facets

Before continuing with the next customization layers, let’s briefly introduce a new concept called faceting. Faceting is used when we’d like to split a particular visualisation by the values of another variable. This will create multiple copies of the same type of plot with matching x and y axes, but whose content will differ.

For example, suppose we were interested in looking at the evolution of life expectancy by continent from 1952. We could “split” this figure for each continent. In other words, we would plot a scatter plot for each continent separately. We do this by adding `facet_wrap(~ continent)` layer.

```r
ggplot(gapminder) +
  geom_point(aes(x = year, y = lifeExp, color = continent)) +
  facet_wrap(~ continent) +
  theme_classic()
```

<img src="img_03_04_01.png" width="75%">

The tilde is required and you’ll receive the error `Error in as.quoted(facets) : object 'continent' not found` if you don’t include it here.

---

# Facets

We can also specify the number of rows and columns in the grid by using the `nrow` and `ncol` arguments inside of `facet_wrap()`. For example, suppose we would like our faceted figure to have 1 rows instead of 2. We simply add an `nrow = 1` argument to `facet_wrap(~ continent)`:

```r
ggplot(gapminder) +
  geom_point(aes(x = year, y = lifeExp, color = continent)) +
  facet_wrap(~ continent, nrow = 1) +
  theme_classic()
```

<img src="img_03_04_02.png" width="75%">

---

# Labels (easy way)

Now, let’s capitalise the x and y axis labels and add a main title to the figure. Ggplot has a layer called `labs()` in order to change the name of the axis labels very quickly. `labs()` has at least 3 arguments for us: x, y and title.

```r
ggplot(gapminder) +
  geom_point(aes(x = year, y = lifeExp, color = continent)) +
  facet_wrap(~ continent, nrow = 1) +
  labs(
    x = "Year (from 1952 to 2007)",
    y = "Life Expectancy",
    title = "Evolution of life expectancy from 1952 to 2007 per continent."
  ) +
  theme_classic()
```

<img src="img_03_04_03.png" width="50%">

---

# Labels (hard way) and aesthetics customisation

The `labs()` layer is very helpful for a quick change but if you need more customisation you can use the `scale_` family of layers.

The `scale_` family of layers controls not only the label of an aesthetic but also the marks and ticks and many more details. To control these details you have to use the right `scale_` layer by calling `scale_[aesthetic argument]_[type of variable]`. Example in our previous plot:
- to change the `year` label, use `scale_x_continuous()` layer
- to change the `lifeExp` label, use `scale_y_continuous()` layer

```r
ggplot(gapminder) +
  geom_point(aes(x = year, y = lifeExp, color = continent)) +
  facet_wrap(~ continent, nrow = 1) +
  scale_x_continuous("Year (from 1952 to 2007)") +
  scale_y_continuous("Life Expectancy") +
  theme_classic()
```
---

# Labels (hard way) and aesthetics customisation

As you can see the writing of the x-axis ticks are overlapping, which is not very neat. To change that we can decrease the resolution of the ticks from every 10 years to every 25 years with the `breaks` argument in the `scale_` family of layers:

```r
ggplot(gapminder) +
  geom_point(aes(x = year, y = lifeExp, color = continent)) +
  facet_wrap(~ continent, nrow = 1) +
  scale_x_continuous("Year (from 1952 to 2007)", breaks = c(1950, 1975, 2000)) +
  scale_y_continuous("Life Expectancy") +
  theme_classic()
```

<img src="img_03_04_04.png" width="75%">

---

# Statistics and special effects

Instead of creating summaries inside the data frame object, ggplot has some function to calculate and display them automatically. One can say that they are for lazy people but they are so useful!

The first special effect is the `geom_smooth()` layer. `geom_smooth()` is a classic geometry layer but which displays linear and non-linear trends.

```r
ggplot(gapminder) +
  geom_point(aes(x = year, y = lifeExp, color = continent)) +
  geom_smooth(aes(x = year, y = lifeExp, color = continent)) +
  facet_wrap(~ continent, nrow = 1) +
  scale_x_continuous("Year (from 1952 to 2007)", breaks = c(1950, 1975, 2000)) +
  scale_y_continuous("Life Expectancy") +
  theme_classic()
```

<img src="img_03_04_05.png" width="75%">

---

# Statistics and special effects

`geom_smooth()` has one important extra argument called `method`. If method has the value "lm", a linear regression will be shown. If method has the value "loess" or "gam", a non-linear regression will be shown.

```r
ggplot(gapminder) +
  geom_point(aes(x = year, y = lifeExp, color = continent)) +
  geom_smooth(aes(x = year, y = lifeExp, color = continent), method = "lm") +
  facet_wrap(~ continent, nrow = 1) +
  scale_x_continuous("Year (from 1952 to 2007)", breaks = c(1950, 1975, 2000)) +
  scale_y_continuous("Life Expectancy") +
  theme_classic()
```

<img src="img_03_04_06.png" width="75%">

Another very useful layer is `stat_summary()` but it will not be introduced here to leave you digest all this information.

---

# Inherited propriety of geometries

You can add as many geometry layers as you want, however repeating the mapping for each geometry layer is very redundant. Thankfully, if all your geometry layers are using the same aesthetics mapping, it is possible to include this mapping inside the `ggplot()`, then all the geometry layers will have the same mapping:

```r
ggplot(gapminder, aes(x = year, y = lifeExp, color = continent)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~ continent, nrow = 1) +
  scale_x_continuous("Year (from 1952 to 2007)", breaks = c(1950, 1975, 2000)) +
  scale_y_continuous("Life Expectancy") +
  theme_classic()
```
---

# The more we customise, the better ...