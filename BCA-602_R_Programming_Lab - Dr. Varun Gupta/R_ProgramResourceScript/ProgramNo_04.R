# Vectors and Vectorized Operations
# -	Create vectors and apply vectorized arithmetic operations.
# Experiment:
# 1.	Write a R program to perform following operations on Vector:
# min(), max(), mean(), sqrt(), length(), sum(), prod(),
# sort()(in ascending and descending order),
# rev(), addition/subtraction/multiplication/division of two vectors.
# 2.	Create a list containing a vector, matrix, and list and:
# a.	Update the elements in the list
# b.	Merge two lists into one list.
# c.	Count number of objects in a given list

# Create two vectors
vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(6, 7, 8, 9, 10)

# Perform vectorized arithmetic operations
sum_vector <- vector1 + vector2
difference_vector <- vector1 - vector2
product_vector <- vector1 * vector2
division_vector <- vector1 / vector2

# Display results
cat("Sum of vectors:", sum_vector, "\n")
cat("Difference of vectors:", difference_vector, "\n")
cat("Product of vectors:", product_vector, "\n")
cat("Division of vectors:", division_vector, "\n")
print("---------------------------------------------")

# Perform other vector operations
min_value <- min(vector1)
max_value <- max(vector1)
mean_value <- mean(vector1)
sqrt_values <- sqrt(vector1)
length_value <- length(vector1)
sum_value <- sum(vector1)
prod_value <- prod(vector1)
sorted_asc <- sort(vector1)
sorted_desc <- sort(vector1, decreasing = TRUE)
reversed_vector <- rev(vector1)

# Display other vector operation results
cat("Min value:", min_value, "\n")
cat("Max value:", max_value, "\n")
cat("Mean value:", mean_value, "\n")
cat("Square root of values:", sqrt_values, "\n")
cat("Length of vector:", length_value, "\n")
cat("Sum of values:", sum_value, "\n")
cat("Product of values:", prod_value, "\n")
cat("Sorted in ascending order:", sorted_asc, "\n")
cat("Sorted in descending order:", sorted_desc, "\n")
cat("Reversed vector:", reversed_vector, "\n")
cat("---------------------------------------------", "\n")
# Create a list containing a vector, matrix, and list
my_list <- list(
  my_vector = c(1, 2, 3),
  my_matrix = matrix(1:6, nrow = 2),
  my_sublist = list(a = "Hello", b = "World")
)

# Update the elements in the list
my_list[[1]] <- c(4, 5, 6)
my_list[[2]] <- matrix(7:12, nrow = 2)
my_list[[3]]$a <- "Hi"
my_list[[3]]$b <- "There"

# Merge two lists into one list
list1 <- list(x = 1, y = 2)
list2 <- list(z = 3, w = 4)
merged_list <- c(list1, list2)

# Count number of objects in a given list
num_objects <- length(my_list)

# Display results using paste()
msg1 <- paste("Updated list:", my_list, "\n")
msg2 <- paste("Merged list:", merged_list, "\n")
msg3 <- paste("Number of objects in the list:", num_objects, "\n")
cat(msg1, msg2, msg3, "\n")