# Create a vector containing your age, height, and years since your leaving cert.
# Store the first element of this vector in a new object called `age`. Store the
# third element of this vector in a new object called `years_from_lc`. Subtract
# `age` with `years_from_lc`:

my_vector <- c(25, 170, 7)

age <- my_vector[1]

years_from_lc <- my_vector[3]

age - years_from_lc

# Create a vector containing the names of the 4 provinces of Ireland, store this
# vector in an object and apply the function `nchar()` to this object:

provinces <- c("Connacht", "Leinster", "Munster", "Ulster")

nchar(provinces)
