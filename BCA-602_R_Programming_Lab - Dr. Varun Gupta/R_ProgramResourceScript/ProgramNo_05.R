# Sub-setting Data in R
# -	Subset vectors using indexing, logical conditions, and names elements. 
# Experiment: Create a vector of 10 elements and extract even-indexed elements.

# Create a vector of 10 elements
my_vector <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

# Extract even-indexed elements
even_indexed_elements <- my_vector[seq(1, length(my_vector), 2)]

# Display the even-indexed elements
cat("Even-indexed elements:", even_indexed_elements, "\n")
print("---------------------------------------------")

# Extract elements using logical conditions (e.g., values greater than 50)
greater_than_50 <- my_vector[my_vector > 50]

# Display elements greater than 50
cat("Elements greater than 50:", greater_than_50, "\n")
print("---------------------------------------------")

# Name the elements of the vector
names(my_vector) <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")

# Extract elements using names
named_elements <- my_vector[c("a", "c", "e")]

# Display the named elements
cat("Named elements:", named_elements, "\n")
print("---------------------------------------------")