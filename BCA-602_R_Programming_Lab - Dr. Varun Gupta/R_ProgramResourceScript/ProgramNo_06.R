# Handling NA and NULL Values
# -	Detect, remove, and replace NA and NULL values; apply coding standard. 
# Experiment: Create a vector with NA values and write a program to remove them.

# Create a vector with NA values
my_vector <- c(1, 2, NA, 4, NA, 6)

# Detect NA values
na_values <- is.na(my_vector)

# Remove NA values
my_vector <- my_vector[!na_values]

# Display the vector after removing NA values
cat("Vector after removing NA values:", my_vector, "\n")
print("---------------------------------------------")

# Replace NA values with a specific value (e.g., 0)
my_vector_with_na <- c(1, 2, NA, 4, NA, 6)
my_vector_with_na[is.na(my_vector_with_na)] <- 0

# Display the vector with replaced NA values
cat("Vector with replaced NA values:", my_vector_with_na, "\n")
print("---------------------------------------------")

# Create a vector with NULL values
my_vector_with_null <- c(1, 2, NULL, 4, NULL, 6)

# Detect NULL values
null_values <- is.null(my_vector_with_null)

# Remove NULL values
my_vector_with_null <- my_vector_with_null[!null_values]

# Display the vector after removing NULL values
cat("Vector after removing NULL values:", my_vector_with_null, "\n")
print("---------------------------------------------")

# Replace NULL values with a specific value (e.g., 0)
my_vector_with_null[is.null(my_vector_with_null)] <- 0

# Display the vector with replaced NULL values
cat("Vector with replaced NULL values:", my_vector_with_null, "\n")
print("---------------------------------------------")