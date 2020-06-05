---
type: slides
---

# Understanding regressions

---

# Understanding regressions

A linear regression model tests the linear relationship between two variables, let's say X and Y. Imagine the variable X as our Independent Variable (or Predictor) and the variable Y as our Dependent Variable (or Outcome). If X and Y are strongly related, the hypothesis that Y is influenced by X can be transcribed with the following equation:

- Y = X

In reality this equation is a very special case of relationship in which the values of the variable X are exactly the same as the values of the variable Y. The equation Y = X involves that the variable Y is completely explained by the variable X.

---

# Understanding regressions

<img src="img_04_04_01.png" width="30%">

In the equation Y = X, three coefficients are hidden because they are unused:

- the intercept coefficient &beta;<sub>0</sub> corresponds to the value of Y when X is 0, which is 0 in our case.
- the slope coefficient &beta;<sub>1</sub> corresponds to how much Y increases when X increases by 1 unit. For example in our case, when  X increases from 2 to 3, that is 1 unit, Y increases from 2 to 3 as well (when X increase by 1 unit, Y increases by 1). Consequently, the slope codefficient is 1 in this example. 
- the error coefficient &epsilon; corresponds to how far from the prediction line the values of Y are, which is 0 in our case because all the values are aligned.

So in general, the relation between a predictor and an outcome can be written as:

- Y = &beta;<sub>0</sub> + &beta;<sub>1</sub> X + &epsilon;

which is in our case:

- Y = 0 + 1 * X + 0

---

# Understanding regressions

Testing the hypothesis that the variable X has a significant influence on the variable Y means testing that slope coefficient &beta;<sub>1</sub> associated to X is significantly different than 0 (in our case is 1 significantly different than 0).

It’s important to understand that a fitted model is just the closest model from a family of models. That implies that you have the “best” model (according to some criteria); it doesn’t imply that you have a good model and it certainly doesn’t imply that the model is “true”. George Box puts this well in his famous aphorism:

**All models are wrong, but some are useful**.

---

# Applied Example

Imagine the following case study: The CEO of the D&D company has problems with his employee well-being and wants to investigate the relationship between Job Satisfaction, Salary and Performance. Therefore, the CEO formulates 3 hypotheses:

- the higher employees' Salary is, the higher their Job Satisfaction (main effect)
- the higher employees' Performance is, the higher their Job  Satisfaction (main effect)
- the effect of Salary on Job Satisfaction is bigger for high Performance than for low Performance (interaction effect)

The business analyst at D&D is making the following hypothesis:

> Because salary has an effect of employees' job satisfaction, I predict that the higher salaries are the higher the employees' job satisfaction.

---

# Applied Example

Let’s use a model to capture that pattern and make it explicit. It’s our job to supply the basic form of the model. In this case, the relationship looks linear, i.e. job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> salary + &epsilon;.

The first and the most important question to answer is "How to find the line used for our analysis?". The answer is simple: just draw all the possible lines on the frame! The best line, also called best fit, is the one which has the lowest amount or error. 

---

# Applied Example

Let’s start by getting a feel for what models from that family look like by randomly generating a few and overlaying them on the data.

<img src="img_04_04_02.png" width="75%">

---

# Applied Example

One easy place to start is to find the vertical distance between each point and the model, as in the following diagram. The following plot is interactive, on the hover you can see for each employee his/her actual salary and job satisfaction. You can also see the value of the prediction error, also called residual, which is the distance between the actual salary and the predicted salary (blue line).

<img src="img_04_04_03.png" width="75%">

---

# Applied Example

This distance is just the difference between the y value given by the model (the prediction), and the actual y value in the data (the response). Here is a presentation of each residual error for each employee. Next, we need some way to compute an overall distance between the predicted and actual values. In other words, the plot above shows 20 distances: how do we collapse that into a single number?

<img src="img_04_04_04.png" width="25%">

One common way to do this in statistics to use the “root-mean-squared deviation” or RMSE. We compute the difference between actual and predicted, square them, average them, and then take the square root. This distance has lots of appealing mathematical properties, which we’re not going to talk about here. You’ll just have to take my word for it!

---

# How to estimate linear regression's coefficients?

As previously indicated, you will not have to calculate all the possible lines in your data to find the best fit, the `lm()` function will do it for you.

The `lm()` function has only two arguments that you should care about: `formula` and `data`. 

- `formula` is the formulation of the model tested which takes the form of the outcome variable name followed by `~` and by predictor variables' name separated by `+`.

- `data` is the name of the data frame object containing the variables.

---

# Main effect test in R formulas

To test a main effect, the formula just needs to include the name of the variable used as predictor:

- `outcome ~ predictor` 

If more than one main effect is expected, the model includes this additional predictor with the symbol `+`:

- `outcome ~ predictor1 + predictor2`

---

# Interaction effect test in R formulas

To test an interaction effect between two predictors (or more) on an outcome variable, the predictors have to be separated by the symbol `:` such as:

- `outcome ~ predictor1:predictor2`

To test a full model (i.e., which contains all possible main effects and all possible interaction effects), the predictors can be separated by the symbol `*`.

Here is a full model with 2 predictors and therefore 3 hypotheses (2 main effects and 1 interaction effect):

- `outcome ~ predictor1*predictor2` which corresponds to ...
  - `outcome ~ predictor1 + predictor2 + predictor1:predictor2`

Here is a full model with 3 predictors and therefore 7 hypotheses (3 main effects and 4 interaction effects):

- `outcome ~ predictor1*predictor2*predictor3` which corresponds to ...
  - `outcome ~ predictor1 + predictor2 + predictor3 + predictor1:predictor2 + predictor1:predictor3 + predictor2:predictor3 + predictor1:predictor2:predictor3`

---

# Summary of formulas definitions

It is essential to understand that the formula of the model tested must include all the effects corresponding to an explicit hypothesis and only the effects corresponding to an explicit hypothesis.

Main effect hypotheses are tested in the model formula just by adding the predictor variable names with `+`. Interaction effect hypotheses are tested in the model formula just by indicating the interacting predictor variable names with `:`.

---

# Let's check another couple of questions ...
