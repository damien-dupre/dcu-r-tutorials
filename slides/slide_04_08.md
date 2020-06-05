---
type: slides
---

# Reading regressions

---

# Reading regressions

Now R has calculated the model, the hardest part of the analysis is done. Indeed the most important matter is to test the model which corresponds to all your hypotheses. Now, the trick is to learn about the mean of the vocabulary used in linear regression's output to understand their results.

---

# Vocabulary

Here, many concepts and letters will be introduced in a short presentation, but I encourage you to read more about them in the references presented in the introduction section.

---

# R and R<sup>2</sup>

R is the letter used to describe the overall correlation of your model and R<sup>2</sup> is the % of variance of the variable X explained by the model. The following visualisation presents [the relationship between correlation and variance explained](https://rpsychologist.com/d3/correlation/).

The letter R denotes the overall correlation when all the predictors are taken into account whereas *r* is the correlation associated to only one predictor.

---

# Estimates, Standardised estimates and associated Standard Errors

Estimates indicate the value of b which is the raw (non-standardised version of &beta;). For the intercept, the estimate corresponds to the value of the outcome variable when the predictor variable is null. For a predictor variable, the estimate corresponds to how much the outcome variable increases or decreases when this predictor increases by one.

In the case of multiple predictors with different units/scales/ranges, the estimate being calculated according to the unit/scale/range of each predictor, can not be compared between the predictors. To compare the strength of the link between each predictor and the outcome variable, standardised estimates are necessary. This standardised estimates also known as &beta; are also the correlation r for each predictor with the outcome variable.

Because the best fit of the model is calculated on a pool of multiple best fit attempts, a confidence margin also know as SE for standard error can be provided.

---

# Statistical tests

Hypothesis testing on linear regression models is built on the “Student t-test” statistic or t-value, which aims to compare groups two by two. In order to test the hypothesis of a variable involving three or more groups, an addition statistic called “Fisher F-test” and using the letter F is required.

---

# p-value and degree of freedom

The p-value is the most important value because it will be used to take a decision on whether to accept or to reject H<sub>0</sub> (and consequently to consider H<sub>A</sub> as potentially true). According to Ronald Fisher, the p-value is the probability that we would have observed a test statistic that is at least as extreme as the one we actually did get if the null hypothesis is true. In other words, if the data are extremely implausible according to the null hypothesis, then the null hypothesis is probably wrong.

The p-value is a probability ranging from 0% to 100% and the threshold to say that the data obtained are extremely implausible is 5% (or 0.05 in a p-value scale). Every result obtained with a p-value lower than 5% or 0.05 is considered as implausible if the null hypothesis is true, and leads to the rejection of this null hypothesis.

The degrees of freedom (df) corresponds to the number of unique “data points” that contribute to a particular calculation, minus the number of “constraints” that they need to satisfy. Running a statistical model will remove all the freedom to preform new analyses with different models. For this reason, all the hypotheses should be tested once, and only once, in the same unique model.

---

# R outputs

The base R function (i.e., built-in) to display linear regression's results, including estimates for each of the beta values, is the `summary()` function:

```
my_data_frame <- data.frame(
  outcome = rnorm(10),
  predictor1 = rnorm(10),
  predictor2 = rnorm(10)
)

linear_model <- lm(formula = outcome ~ predictor1 * predictor2, data = my_data_frame)

summary(linear_model)
```

The output that this command produces is pretty dense, but we’ve already discussed everything of interest in it, so what I’ll do is go through it line by line. 

---

# R outputs

The first line reminds us of what the actual regression model is:

```
Call:
lm(formula = outcome ~ predictor1 * predictor2, data = my_data_frame)
```

You can see why this is handy, since it was a little while back when we actually created the `summary_model` model, and so it’s nice to be reminded of what it was we were doing. The next part provides a quick summary of the residuals (i.e., the &epsilon; values),

```
Residuals:
     Min       1Q   Median       3Q      Max 
-0.60737 -0.36877 -0.05916  0.20591  0.83849
```

which can be convenient as a quick check that the model is okay. **Linear regression assumes that these residuals were normally distributed, with mean 0.** In particular it’s worth quickly checking to see if the median is close to zero, and to see if the first quartile is about the same size as the third quartile. If they look badly off, there’s a good chance that the assumptions of regression are violated. 

---

# R outputs

The next part of the R output looks at the coefficients of the regression model:

```
Coefficients:
                      Estimate Std. Error t value Pr(>|t|)  
(Intercept)            -0.2951     0.1911  -1.544   0.1735  
predictor1             -0.2958     0.2152  -1.374   0.2185  
predictor2              0.1344     0.1680   0.800   0.4540  
predictor1:predictor2   0.4993     0.1764   2.831   0.0299 *
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

Each row in this table refers to one of the coefficients in the regression model. The first row is the intercept term, and the later ones look at each of the predictors. The columns give you all of the relevant information. The first column is the actual estimate of b (e.g., -0.2951 for the intercept, and -0.2958 for the predictor1). The second column is the standard error estimate (SE). The third column gives you the t-statistic. Finally, the fourth column gives you the actual p value for each of these tests. 

---

# R outputs

The only thing that the table itself doesn’t list is the degrees of freedom used in the t-test, which is always N−K−1 and is listed immediately below, in this line:

```
Residual standard error: 0.575 on 6 degrees of freedom
```

The value of df=6 is equal to N−K−1, so that’s what we use for our t-tests. In the final part of the output we have the F-test and the R<sup>2</sup> values which assess the performance of the model as a whole

```
Multiple R-squared:  0.6977,	Adjusted R-squared:  0.5465 
F-statistic: 4.615 on 3 and 6 DF,  p-value: 0.05313
```

So in this case, the model did not perform significantly better than you’d expect by chance (F(3,6) = 4.615, p = 0.053), which isn’t all that surprising: the R<sup>2</sup> = 0.6977 value indicate that the regression model accounts for 69.7% of the variability in the outcome measure. However, when we look back up at the t-tests for each of the individual coefficients, we have pretty strong evidence that the predictor1 and predictor2 variables have no significant effect. However the results suggest as significant interaction between predictor1 and predictor2.

---

# Reporting clean results

While it is the most used output to read the data in linear regression models, the output of the `summary()` function is not the cleanest ever. Thankfully, many additional packages are providing alternative functions to read linear regression models. Because there are too many packages, I will focus only on two additional packages: {broom} and {papaja}.

---

# Clean lm() with {broom}

The {broom} package was created precisely for the purpose of cleaning output of the `lm()` function (https://cran.r-project.org/web/packages/broom/vignettes/broom.html).

```
#install.packages("broom")
library(broom)
```

{broom} is very simple and has 3 functions to extract clean results:

- `glance()` will produce a table with the test of the overall model
- `tidy()` will produce a table of each individual predictor
- `augment()` will produce a table of the prediction for each observation in the model

```
glance(linear_model)
```

```
tidy(linear_model)
```

```
augment(linear_model)
```

---

# Clean lm() with {papaja}

All the previous packages installed so far were hosted on the CRAN website (Comprehensive R Archive Network). However some very good packages are also hosted on GitHub.com and this is the case of {papaja}. To install {papaja}, the {remote} package has to be installed as well as follow:

```
install.packages("remotes")

remotes::install_github("crsh/papaja")
```

{papaja} is a package providing support and templates of Research publications using the APA style (https://crsh.github.io/papaja_man/). The APA style is not only for references citation styling but also for all the publications' content including linear regression outputs. For this purpose, {papaja} has one main function called `apa_print()` which is formatting the output of linear regressions.

```
library(papaja)

papaja_model <- apa_print(linear_model)

```

---

# Clean lm() with {papaja}

When applied, `apa_print()` has 4 type of results:

1. estimate: provides results without statistical tests

```{r echo=TRUE}
papaja_model$estimate

```

2. statistic: provides only statistical tests

```{r echo=TRUE}
papaja_model$statistic

```

3. full_result: provides all results including statistical tests

```{r echo=TRUE}
papaja_model$full_result

```

4. table: summarises all results including statistical test in a table

```{r echo=TRUE}
papaja_model$table

```

---

# Clean lm() with {papaja}

These outputs are particularly useful, especially in the case of a Rmarkdown report (introduced in future tutorials). By using these inputs directly in the text with an inline code chunk, the result of the analysis appears directly formatted.

Here is a sentence as it can appear in a Rmarkdown document:
```
"The hypothesis that there is a significant link between the predictor1 and the outcome variable is rejected (`r papaja_model$full_result$predictor1`)."
```
---

# Analyst 1, 2, 3 and 4's hypothesis testing.

Now all the basics of hypothesis testing have been introduced, it is times to go back to our 4 analysts and to check their hypotheses.

---

# Analyst 1

Analyst 1's hypothesis was that **job satisfaction is influenced by employee salary**. In order to test this hypothesis, Analyst 1 tests the following mathematical model: 

job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> salary + &epsilon;

In R, this model is translated as:

```{r echo=TRUE}
analyst_1_lm <- lm(formula = js_score ~ salary, data = dand)

analyst_1_apa <- apa_print(analyst_1_lm)
```

The results of the overall model are shown in the following table: 

```{r echo=TRUE}
# using the {broom} package
glance(analyst_1_lm)
```

```{r echo=TRUE, eval=FALSE}
The link between salary and job satisfaction is significantly different than 0 (`r analyst_1_apa$full_result$salary`) which indicates that the null hypothesis is rejected.
```

---

# Analyst 2

Analyst 2's hypothesis was that **job satisfaction is influenced by employee performance**. In order to test this hypothesis, Analyst 2 tests the following mathematical model: 

job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> performance + &epsilon;

In R, this model is translated as:

```{r echo=TRUE}
analyst_2_lm <- lm(formula = js_score ~ perf, data = dand)

analyst_2_apa <- apa_print(analyst_2_lm)
```

The results of the overall model are shown in the following table: 

```{r echo=TRUE}
# using the {broom} package
glance(analyst_2_lm)
```

```{r echo=TRUE, eval=FALSE}
The link between performance and job satisfaction is not significantly different than 0 (`r analyst_2_apa$full_result$perf`) which indicates that the null hypothesis is not rejected.
```

---

# Analyst 3

Analyst 3's hypotheses were that **job satisfaction is influenced by employee salary** and that **job satisfaction is also influenced by employee performance**. In order to test these hypotheses, Analyst 3 tests the following mathematical model: 

job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> salary + &beta;<sub>2</sub> performance + &epsilon;

In R, this model is translated as:

```{r echo=TRUE}
analyst_3_lm <- lm(formula = js_score ~ salary + perf, data = dand)

analyst_3_apa <- apa_print(analyst_3_lm)
```

The results of the overall model are shown in the following table: 

```{r echo=TRUE}
# using the {broom} package
glance(analyst_3_lm)
```

```{r echo=TRUE, eval=FALSE}
The link between salary and job satisfaction is significantly different than 0 (`r analyst_3_apa$full_result$salary`) which indicates that the null hypothesis is rejected. In addition, the link between performance and job satisfaction is not significantly different than 0 (`r analyst_3_apa$full_result$perf`) which indicates that the null hypothesis is not rejected.
```

---

# Analyst 4

Analyst 4's hypotheses were that **job satisfaction is influenced by employee salary**, that **job satisfaction is also influenced by employee performance**, and that **the influence of employee salary on job satisfaction is different according employee performance**. In order to test these hypotheses, Analyst 4 tests the following mathematical model: 

job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> salary + &beta;<sub>2</sub> performance + &beta;<sub>3</sub> salary * performance + &epsilon;

In R, this model is translated as:

```{r echo=TRUE}
analyst_4_lm <- lm(formula = js_score ~ salary + perf + salary : perf, data = dand)

analyst_4_apa <- apa_print(analyst_4_lm)
```

The results of the overall model are shown in the following table: 

```{r echo=TRUE}
# using the {broom} package
glance(analyst_4_lm)
```

```{r echo=TRUE, eval=FALSE}
The link between salary and job satisfaction is significantly different than 0 (`r analyst_4_apa$full_result$salary`) which indicates that the null hypothesis is rejected. In addition, the link between performance and job satisfaction is not significantly different than 0 (`r analyst_4_apa$full_result$perf`) which indicates that the null hypothesis is not rejected. Finally, the different between the effect of salary on job satisfaction according to the performance is not significantly different than 0 (`r analyst_4_apa$full_result$salary_perf`) which indicates that the null hypothesis is not rejected as well.
```

---

# Let's practice some linear regression models with the gapminder data ...
