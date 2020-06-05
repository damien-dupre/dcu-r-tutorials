---
type: slides
---

# Vector Basics

---

# Introducing vectors

In the final exercise of the previous section, you have seen that an object (storing the results of the `seq()` function) has more than one value. We refer to this kind of object as a vector.

If you want to create your own new vector, you can do that using the `c()` function. In which case c stands for combine and will create a vector with all the elements included in the brackets:

```r
my_vector <- c(4, 5, 6)
my_vector
```

```out
[1] 4 5 6
```

---

# Subsetting vectors

You can access the individual elements within a vector by using square brackets `[]` along with a number that refers to the location within the vector. These index values start at 1, which is different from many other programming languages that start at zero. Let’s say we want to see the value in the second place of the vector:

```r
my_vector <- c(4, 5, 6)

my_vector[2]
```

```out
[1] 5
```
---

# Subsetting vectors

You can also look at a range of positions, by putting the start and end locations with a colon in between:

```r
my_vector[2:3]

```

```out
[1] 5 6
```

You can also change the values of specific locations using the same indexing:

```r
my_vector[3] <- 7
my_vector

```

```out
[1] 4 5 7
```

---

# Maths with vectors

You can apply mathematical operations to the elements of a vector just as you would with a single number:

```r
my_vector <- c(4, 5, 6)
my_vector_times_ten <- my_vector * 10
my_vector_times_ten
```

```out
[1] 40 50 60
```

---

# Maths with vectors

You can also apply mathematical operations on pairs of vectors. In this case, each matching element is used for the operation.

```r
my_first_vector <- c(1, 2, 3)
my_second_vector <- c(10, 20, 30)
my_first_vector + my_second_vector
```

```out
[1] 11 22 33
```

---

# Maths with vectors

We can also apply logical operations across vectors; again, this will return a vector with the operation applied to the pairs of values at each position.

```r
vector_a <- c(1,2,3)
vector_b <- c(1,2,4)
vector_a == vector_b
```
```out
[1]  TRUE  TRUE FALSE
```

---

# Maths with vectors

Most functions will work with vectors just as they would with a single number. For example, let’s say we wanted to obtain the trigonometric sine for each of a set of values. We could create a vector and pass it to the `sin()` function, which will return as many sine values as there are input values:

```r
my_angle_values <- c(0, 1, 2)
my_sin_values <- sin(my_angle_values)
my_sin_values
```

```out
[1] 0.0000000 0.8414710 0.9092974
```
---

# Maths with vectors

Importantly, vectors can be made of numeric values but they can also be made of character strings between quotation marks (e.g., `"hello world"`), boolean such as `TRUE` or `FALSE`, or any kind of objects even multiple vectors. The only requirement is to respect the same type of object inside a vector.

In the following example, we subset the 2nd value of the vector `leinster_county`:

```r
leinster_county <- c("Carlow", "Dublin", "Kildare", "Kilkenny", "Laois", "Longford", "Louth", "Meath", "Offaly", "Westmeath", "Wexford", "Wicklow")

leinster_county[2]
```

```out
[1] "Dublin"
```
---

# Maths with vectors

However, functions applied to vectors have specific requirements regarding the type of elements in the vector. 

For instance, using function `sin()`, which expects numeric values, with the `leinster_county` object made of character strings, will generate the following error:

```r
sin(leinster_county)
```

```out
Error in sin(leinster_county) : non-numeric argument to mathematical function
```
---

# Now, time to practise without errors hopefully...
