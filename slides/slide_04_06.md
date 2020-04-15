---
type: slides
---

# Applying regressions

---

# Applying regressions

Let's go back to our example using the `dand` dataset. Just to remind you, the `dand` dataset is made of 20 employees and for each of them we have the measure for the 3 following variables:

<img src="img_04_06_01.png" width="75%">

---

# Different analysts, different models

Imagine that 4 analysts have their own report to create:

- Analyst 1 predicts that **job satisfaction is influenced by employee's salary**.
- Analyst 2 predicts that **job satisfaction is influenced by employee's performance**.
- Analyst 3 predicts that 
  - **job satisfaction is influenced by employee's salary**
  - **job satisfaction is also influenced by employee's performance**.
- Analyst 4 predicts that 
  - **job satisfaction is influenced by employee's salary**
  - **job satisfaction is also influenced by employee's performance**
  - **the influence of employee's salary on job satisfaction is different according employee's performance**

---

# Analyst 1's model

Analyst 1 predicts that job satisfaction is influenced by employee's salary. More precisely, Analyst 1 predicts that job satisfaction will increase when employee's salary is increasing (H<sub>A</sub>).

This hypothesis can be translated as:

- H<sub>A</sub>: &beta; &ne; 0 (coefficient of correlation associated to salary is different than 0)
- H<sub>0</sub>: &beta; = 0 (coefficient of correlation associated to salary equals 0)

In mathematical terms, Analyst 1's model to test this hypothesis will be:

job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> salary + &epsilon;

To use test this hypothesis in a linear regression model, the Analyst 1 will use the lm() function as follow:

```
analyst_1_lm <- lm(formula = js_score ~ salary, data = dand)
```

---

# Analyst 2's model

Analyst 2 predicts that job satisfaction is influenced by employee's performance. More precisely, Analyst 2 predicts that job satisfaction for employees with high performance is higher than job satisfaction for employees with low performance (H<sub>A</sub>).

This hypothesis can be translated as:

- H<sub>A</sub>: &beta; &ne; 0 (coefficient of correlation associated to performance is different than 0)
- H<sub>0</sub>: &beta; = 0 (coefficient of correlation associated to performance equals 0)

In mathematical terms, Analyst 2's model to test this hypothesis will be:

job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> performance + &epsilon;

to use test this hypothesis in a linear regression model, the Analyst 2 will use the `lm()` function as follow:

```
analyst_2_lm <- lm(formula = js_score ~ perf, data = dand)
```

---

# Note on linear regression for predictors with 3 modalities or more

In the case of a linear regression involving a categorical variable with 2 modalities as predictor, the best regression line is exactly the one passing through the average of the 2 modalities. For this reason, if the slope of this line is 0 (i.e., horizontal line), these means are identical and no difference can be observed between the two groups. At the contrary, if the slope is different than 0 (i.e., oblique line), these means are not identical and the groups can be considered as different. The t-test usually used in this case is a special case of the linear regression.

Because, the linear regression method is based on the t-test, categorical variable are processed by comparing all modalities with a reference modality (default behaviour). Therefore, to obtain the overall effect of a categorical variable with 3 or more modalities, an additional function should be used to summarise the 2-by-2 comparisons and thus obtaining a p-value for the overall variable that will be used to test the hypothesis involving this variable.

---

# Analyst 3's model

Analyst 3 predicts that job satisfaction is influenced by employee's salary. More precisely, Analyst 3 predicts that job satisfaction will increase when employee's salary is increasing (H<sub>A<sub>1</sub></sub>).

This hypothesis can be translated as:

- H<sub>A<sub>1</sub></sub>: &beta;<sub>1</sub>; &ne; 0 (coefficient of correlation associated to salary is different than 0)
- H<sub>0<sub>1</sub></sub>: &beta;<sub>1</sub>; = 0 (coefficient of correlation associated to salary equals 0)

Analyst 3 also predicts that job satisfaction is influenced by employee's performance. More precisely, Analyst 3 predicts that job satisfaction for employees with high performance is higher than job satisfaction for employees with low performance (H<sub>A<sub>2</sub></sub>).

This hypothesis can be translated as:

- H<sub>A<sub>2</sub></sub>: &beta;<sub>2</sub>; &ne; 0 (coefficient of correlation associated to performance is different than 0)
- H<sub>0<sub>2</sub></sub>: &beta;<sub>2</sub>; = 0 (coefficient of correlation associated to performance equals 0)

---

# Analyst 3's model

In mathematical terms, Analyst 3's model to test these hypotheses will be:

job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> salary + &beta;<sub>2</sub> performance + &epsilon;

to use test this hypothesis in a linear regression model, the Analyst 3 will use the `lm()` function as follow:

```
analyst_3_lm <- lm(formula = js_score ~ salary + perf, data = dand)
```
---

# Analyst 4's model

Analyst 4 predicts that job satisfaction is influenced by employee's salary. More precisely, Analyst 4 predicts that job satisfaction will increase when employee's salary is increasing (H<sub>A<sub>1</sub></sub>).

This hypothesis can be translated as:
 
- H<sub>A<sub>1</sub></sub>: &beta;<sub>1</sub>; &ne; 0 (coefficient of correlation associated to salary is different than 0)
- H<sub>0<sub>1</sub></sub>: &beta;<sub>1</sub>; = 0 (coefficient of correlation associated to salary equals 0)

Analyst 4 also predicts that job satisfaction is influenced by employee's performance. More precisely, Analyst 4 predicts that job satisfaction for employees with high performance is higher than job satisfaction for employees with low performance (H<sub>A<sub>2</sub></sub>).

This hypothesis can be translated as:

- H<sub>A<sub>2</sub></sub>: &beta;<sub>2</sub>; &ne; 0 (coefficient of correlation associated to performance is different than 0)
- H<sub>0<sub>2</sub></sub>: &beta;<sub>2</sub>; = 0 (coefficient of correlation associated to performance equals 0)

---

# Analyst 4's model

Finally, Analyst 4 predicts that the effect of salary on job satisfaction will be different according to employee's performance. More precisely, Analyst 4 predicts that for employees with high performance, job satisfaction will increase when employee's salary is increasing. However, for employees with low performance, job satisfaction will decrease when employee's salary is increasing (H<sub>A<sub>3</sub></sub>).

This hypothesis can be translated as:

- H<sub>A<sub>3</sub></sub>: &beta;<sub>3</sub>; &ne; 0 (coefficient of correlation associated to the interaction between salary and performance is different than 0)
- H<sub>0<sub>3</sub></sub>: &beta;<sub>3</sub>; = 0 (coefficient of correlation associated to the interaction between salary and performance equals 0)

In mathematical terms, Analyst 3's model to test these hypotheses will be:

job satisfaction = &beta;<sub>0</sub> + &beta;<sub>1</sub> salary + &beta;<sub>2</sub> performance + &beta;<sub>3</sub> salary * performance + &epsilon;

to use test this hypothesis in a linear regression model, the Analyst 4 will use the `lm()` function as follow:

```
analyst_4_lm <- lm(formula = js_score ~ salary + perf + salary:perf, data = dand)
```

---

# Let's check another couple of questions ...
