# Create variables of different data types in R
# and display their type using appropriate functions.

# Creating variables of different data types
integer_var <- 42L # Integer
numeric_var <- 3.14 # Numeric (double)
character_var <- "Hello, World!" # Character
logical_var <- TRUE # Logical
complex_var <- 2 + 3i # Complex
# Creating a factor variable
factor_var <- factor(c("red", "green", "blue"))

# Displaying variable types
cat("Type of integer_var:", class(integer_var), "\n")
cat("Type of numeric_var:", class(numeric_var), "\n")
cat("Type of character_var:", class(character_var), "\n")
cat("Type of logical_var:", class(logical_var), "\n")
cat("Type of complex_var:", class(complex_var), "\n")
cat("Type of factor_var:", class(factor_var), "\n")

# Displaying the structure of each variable
str(integer_var)
str(numeric_var)
str(character_var)
str(logical_var)
str(complex_var)
str(factor_var)