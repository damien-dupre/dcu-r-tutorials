---
title: 'Chapter 4: Hypothesis Testing and Linear Regression'
description:
  'This chapter introduces the basics concepts of hypothesis formulation and testing with linear regression models.'
prev: /chapter_03
next: null
type: chapter
id: 4
---

<exercise id="1" title="Introduction" type="slides">

<slides source="slide_04_01">
</slides>

</exercise>

<exercise id="2" title="Hypothesis testing" type="slides">

<slides source="slide_04_02">
</slides>

</exercise>

<exercise id="3" title="Questions: Test your knowledge of hypothesis testing">

How many models should I test if I have 3 hypotheses?

<choice>

<opt text="1" correct="true">

Well done!

</opt>

<opt text="2">

This is called p-Hacking, try again.

</opt>

<opt text="3">

This is called p-Hacking, try again.

</opt>

</choice>

If T-test and ANOVA models are special cases of simple and easy Linear Regression models, why do I need to use them?

<choice>

<opt text="Because statistics are taught by teachers who doesn't know it" correct="true">

Well done!

</opt>

<opt text="Because it's better to use a complicated solution when an easier is available">

Hmmm I'm not sure about that, have a look at the Okam's Razor principle

</opt>

<opt text="Because their provides fun and joy">

It can but, it's not the answer expected here

</opt>

</exercise>

<exercise id="4" title="Understanding regressions" type="slides">

<slides source="slide_04_04">
</slides>

</exercise>

</exercise>

<exercise id="5" title="Questions: Test your knowledge of linear regressions">

What is the value of the intercept &beta;<sub>0</sub>?

<choice>

<opt text="The value of the variable X when Y equals 0">

The intercept is used to find the origin of the best line on the X axis, try again.

</opt>

<opt text="The value of the variable Y when X equals 0" correct="true">

Well done!

</opt>

<opt text="The slope coefficient of the best line between the variable X and Y">

The intercept is used to find the origin of the best line on the X axis, try again.

</opt>

</choice>

What corresponds the slope value &beta;<sub>1</sub>?

<choice>

<opt text="The value of the variable X when Y equals 0">

The slope coefficient of the best line between the variable X and Y, try again.

</opt>

<opt text="How much the variable X increase when Y increase by 1">

The slope coefficient of the best line between the variable X and Y, try again.

</opt>

<opt text="How much the variable Y increase when X increase by 1" correct="true">

Well done!

</opt>

</choice>

</exercise>

<exercise id="6" title="Applying regressions" type="slides">

<slides source="slide_04_06">
</slides>

</exercise>

<exercise id="7" title="Questions: Test your skills in applying linear regressions">

The model `js_score ~ salary + perf + salary:perf` has ...

<choice>

<opt text="1 main effect hypothesis and 2 interaction effect hypotheses">

Main effects are included just by using the name of the variable and interaction effect by using the symbol `:` (or `*` in case of a full model), try again.

</opt>

<opt text="2 main effect hypotheses and 1 interaction effect hypothesis" correct="true">

Well done!

</opt>

<opt text="3 main effect hypotheses">

Main effects are included just by using the name of the variable and interaction effect by using the symbol `:` (or `*` in case of a full model), try again.

</opt>

</choice>

The interaction effect introduced in R formulas with the symbol `:` ...

<choice>

<opt text="Is easy to understand">

If it's the case, you wouldn't have selected this answer! #inception

</opt>

<opt text="Can also involve only one variable">

It is possible to manually create the interaction variable by multipling the values of the variables involved, try again.

</opt>

<opt text="Tests an hidden variable created by multipling the values of the variables involved" correct="true">

Well done!

</opt>

</choice>
</exercise>

<exercise id="8" title="Reading regressions" type="slides">

<slides source="slide_04_08">
</slides>

</exercise>

<exercise id="9" title="Exercise: Practice linear regressions">

<codeblock id="04_09">

Replace the _ _ _ with the values in the comments:

library(_ _ _) # load package

str(_ _ _) # structure data frame object

head(_ _ _) # first 6 observations

gapminder_regression <- lm(formula = _ _ _ , data = _ _ _ ) # linear regression model

_ _ _ (gapminder_regression) # results of the linear regression

</codeblock>

</exercise>

<exercise id="10" title="Conclusion">

This tutorial aimed to introduce the process of hypothesis testing with linear regression in R. First we have seen how to formulate hypotheses properly and how to formulate the model that will be used to test them. This step is essential, if no hypothesis is formulated there is no need for linear regression. Then, the process behind linear regression was quickly introduced. 

Even if it looks simple and it is simple, linear regressions have many more complicated parameters to take into account such as outliers removal and application conditions checking. Finally, the way how to read the output from linear regressions was also presented. We have seen some concepts that takes years to be familiar with such as p-value and degree of freedom. 

As this tutorial is an introduction, I would strongly recommend to read and practice much more. Some concepts were also omitted in order to make it easy, such as confidence intervals, error types, sample size, effect size or power. Linear regression is not a magical tool and has many details that you need to investigate in order to be expert in hypothesis testing with linear regression.

</exercise>
