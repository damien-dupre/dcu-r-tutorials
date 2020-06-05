---
type: slides
---

# Hypothesis testing

---

# Hypothesis testing

If they are experts in their field, why don't scientists just use common sense? The best answer is a really simple one: **we can't trust them**. Scientists can't solve **deductive** problems (ones where no guessing is required such as hypothesising after the results are known) without being influenced by pre-existing biases.

Instead, scientific reasoning requires engagement in **induction**, making wise guesses and going beyond the immediate evidence of the senses to make generalisations about the world. Therefore, much of statistics is functions as a safeguard.

**Inductive research** is the process of formulating hypotheses a priori from theories and to test them against the data. Every hypothesis, called H<sub>A</sub> has to state a difference (between groups or according values) and every hypothesis has a null hypothesis counterpart (no difference between groups or according values) also called H<sub>0</sub>.

---

# Hypothesis testing

A hypothesis test consists of a test between two competing hypotheses: 

- #### A null hypothesis H<sub>0</sub> (pronounced “H-naught”) versus 
- #### An alternative hypothesis H<sub>A</sub> (also denoted H<sub>1</sub>)

Generally the null hypothesis is a claim that there is “no effect” or “no difference of interest”. In many cases, the null hypothesis represents the status quo or a situation that nothing interesting is happening. Furthermore, generally the alternative hypothesis is the claim the experimenter or researcher wants to establish or find evidence to support. It is viewed as a “challenger” hypothesis to the null hypothesis H<sub>0</sub>.
  
**Testing hypotheses consists in evaluating the probability of having "the difference obtained in my sample" knowing that the null hypothesis is true in the real life.**
---

# Identifying variables in your hypotheses

In the context of this tutorial, any hypothesis formulate the prediction of the relationship between at least two variables. It's important to identify the two roles "variables doing the explaining" and "variable being explained" distinct.

For each hypothesis, let's denote the:

- **"variable being explained"** as Y (also called Dependent Variable (DV) or Outcome). This variable has to be unique and made of numeric values (i.e., continuous).
- **"variables doing the explaining"** as X, Z, ... (also called Independent Variables (IV) or Predictors). An hypothesis contains only one variable if this hypothesis states a main effect, and it contains two or more variables if this hypothesis is an interaction. The variable(s) can be either made of character strings (i.e., categorical) or made of numeric values (i.e., continuous).
- &beta; as the strength and the direction of the relationship between the **"variables doing the explaining"** and the **"variable being explained"**.

---

# Main effect hypothesis

A main effect is the prediction of the link between one continuous Dependent Variable ("variable being explained") and one Independent Variable ("variable doing the explaining") that can be categorical or continuous.

The general formulation of the main effect hypothesis is: **"The Independent Variable has a significant effect on the Dependent Variable"**.

Which can be translated by either:

- "the Dependent Variable is explained by the Independent Variable"
- "the Independent Variable is explaining the Dependent Variable"
- "the Independent Variable influences the Dependent Variable"
- "there is a link/relationship between the Independent Variable and the Dependent Variable"

These hypotheses formulations are generic. They have to be adapted within each case study and to be detailed to indicate the direction of the effect/explaining/influence/link/relationship.

---

# Model with one main effect

The relation between one Independent Variable (X) and one Dependent Variable (Y) is represented as follow and can be read as "X has a **main** effect on Y":

<img src="img_04_02_01.png" width="75%">

---

# Interaction effect hypothesis

An interaction effect is the prediction of the relationship between one continuous Dependent Variable ("variable being explained") and two or more Independent Variables ("variables doing the explaining") that can be either categorical or continuous.

The general formulation of an interaction effect hypothesis with 2 Independent Variables is: **"The effect of Independent Variable 1 on the Dependent Variable changes according to the values of Independent Variable 2"**.

---

# Interaction effect hypothesis

<img src="img_04_02_02.png" width="75%">

Both models can be read as:

- "X have a **main** effect on Y"
- "Z have a **main** effect on Y"
- "X and Z have an **interaction** effect on Y"

---

# Evaluation of the effect significance

Once all the hypotheses are formulated, it is time to test all of them in one unique model. In this model, a value called &beta; which is usually the coefficient of correlation is associated to each predictor from the hypotheses. Testing for the significance of the effect means evaluating if this &beta; value is significantly different, higher or lower than 0 (no link between variables):

- H<sub>A</sub>: &beta; &ne; 0
- H<sub>0</sub>: &beta; = 0

To test the significance of the effects, only one statistical method will be used for all hypotheses types which are Linear Regressions. Specific tests are available for certain type of hypothesis such as T-test or ANOVA but as they are special cases of Linear Regressions, their importance is limited (see Jonas Kristoffer Lindeløv's blog post: [Common statistical tests are linear models](https://lindeloev.github.io/tests-as-linear/)).

---

# Let's check a couple of questions now ...
