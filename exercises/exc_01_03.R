<<<<<<< HEAD
library("rjson")
library(ggplot2)

# This code will run relative to the root of the repo, so we can load files
data <- fromJSON(file = "exercises/mtcars.json")

# Print the first record in the data
print(___[____])

# Assign the length of data to some_var
some_var <- ___

qplot(mpg, data = data)
=======
# The {norris} package installation has already been done
# install.package("norris") 

# Load the {norris} package by using it name with or without quotes
library(_ _ _)

# Use one of the function from the norris package
get_random_joke()
>>>>>>> 8797160e6f1d4be56bd3039bf3536065ab633d3c
