---
type: slides
---

# Coding Basics

---

# Arithmetic operations

Let’s review some basics we’ve so far omitted in the interests of getting you plotting as quickly as possible. You can use R as a calculator.

|Operator |Description    |
|:-------:|:-------------:|
|+        |addition       |
|-        |subtraction    |
|*        |multiplication |
|/        |division       |

---

You can run the following code if you paste it in a R console and hitting the **Ctrl+Enter** (Windows) or **Cmd+Enter** (Mac) keys.

```r
1 / 200 * 30

(59 + 73 + 2) / 3

sin(pi / 2)
```

```out
[1] 0.15

[1] 44.66667

[1] 1
```

R spits out the answer to whatever you type in, as long as it can figure it out.

---

# Logical operations

Another kind of object is known as a logical object, because it is based on the idea from logic that a statement can be either true or false. In R, these are capitalized (`TRUE` and `FALSE`).

To determine whether a statement is true or not, we use logical operators. 

|Operator |Description                   |
|:-------:|:----------------------------:|
|> and <  |higher/lower than             |
|>= and <=|higher/lower than or equal to |
|==       |exactly equal to              |
|!=       |not equal to                  |

---

You are already familiar with some of these, like the higher-than (`>`) and lower-than (`<`) operators. Run the following code or hit the **Ctrl+Enter** keys (Windows) or **Cmd+Enter** (Mac) inside the code box.

```r
1 < 3

2 >= 4
```

```out
[1] TRUE

[1] FALSE
```

Often we want to know whether two numbers are equal or not equal to one another. There are special operators in R to do this: `==` for equals, and `!=` for not-equals:

```r
3 == 3

4 != 4
```

```out
[1] TRUE

[1] FALSE
```

---

# Missing values

One important feature of R that can make comparison tricky are missing values, or `NA`s (“not available”). `NA` represents an unknown value so missing values are “contagious”: almost any operation involving an unknown value will also be unknown.

```r
NA > 5

NA + 10

NA / 2
```

```out
[1] NA

[1] NA

[1] NA
```
---

# Objects

An object is a content that can include anything (e.g., values, data frames, figures, models) and has a name that you have to choose. We can create an object by **assigning a value** to it using the `<-` operator. If we then type the name of the object R will print out its value.

```r
x <- 4
x
```

```out
[1] 4
```
---

The object now stands for the value that it contains, so we can perform operations on it and get the same answer as if we used the value itself.

```r
x <- 4

x + 3

x == 5
```

```out
[1] 7

[1] FALSE
```

---

We can change the value of an object by simply **assigning** a new value to it.

```r
x <- 4

x <- 5

x
```

```out
[1] 5
```

We can also use an object to overwrite itself!

```r
x <- 4

x <- x +1

x
```

```out
[1] 5
```
---

All R statements where you create objects, **assignment statements**, have the same form:

```r
object_name <- value
```

When reading that code say “object name gets value” in your head. You will make lots of **assignments** and `<-` is a pain to type.

---

# What’s in a name?

Object names must start with a letter, and can only contain letters, numbers, `_` and `.`. You want your object names to be descriptive, so you’ll need a convention for multiple words. I recommend **snake_case** where you separate lower-case words with `_`.

```r
i_use_snake_case

otherPeopleUseCamelCase

some.people.use.periods

And_aFew.People_RENOUNCEconvention
```

---

You can inspect an object by typing its name.

If I store the following object:

```r
this_is_a_really_long_name <- 2.5
```

And run only the object's name:

```r
this_is_a_really_long_name
```

The content of the object will be displayed:

```out
[1] 2.5
```

---

Here is what happens if we inspect the following assignment:

```r
r_rocks <- 2 ^ 3

R_rock
```

```out
Error: object 'R_rock' not found
```

Here is an error. Take a deep breath before you read it and try to understand it.

There’s an implied contract between you and R: it will do the tedious computation for you, but in return, you must be completely precise in your instructions. **Typos matter. Case matters**.

---

# Calling functions

R has a large collection of built-in functions that are called like this:

```r
function_name(arg1 = val1, arg2 = val2, ...)
```

Let’s inspect the function `seq()` which makes a sequence of numbers. The first argument is called `from` and refers to the number used to start the sequence. The second argument is called `to` and refers to the last number of the sequence.

If we run the following code, here is its output:

```r
seq(from = 1, to = 10)
```

```out
[1]  1  2  3  4  5  6  7  8  9 10
```

---

Even if it is always advised to use argument names explicitly, it is possible to use fill the argument implicitly without argument name. In this case the arguments will be matched by position.

```r
seq(1, 10)
```

```out
[1]  1  2  3  4  5  6  7  8  9 10
```

The name of the function is always followed by an opening bracket `(` and has to finish with a closing bracket `)`.

---

# Unfinished function and statements

Quotation marks and parentheses must always come in a pair but it’s still possible to mess up and end up with a mismatch. If this happens, R will show you the continuation character `+`:

```r
seq(1, 10
```

```out
> seq(1, 10
+
```

Same problem with quotation marks `"` :

```r
x <- "hello
```

```out
> x <- "hello
+
```

The `+` tells you that R is waiting for more input; it doesn’t think you’re done yet. Usually that means you’ve forgotten either a `"` or a `)`. Either add the missing pair, or press ESCAPE to abort the expression and try again.

---

# Let's practice assignments and functions...
