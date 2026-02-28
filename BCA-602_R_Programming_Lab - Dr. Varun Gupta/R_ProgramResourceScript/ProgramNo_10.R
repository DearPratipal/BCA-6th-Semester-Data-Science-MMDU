# Apply Family Functions
# -	Use apply(), lapply(), sapply(), tapply() on matrices.
# Experiment: Use apply(), lapply(), sapply(), tapply() on matrix and compare the results.

# Create a matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
print("Original Matrix:")
print(my_matrix)

# Apply function to each row
row_sums <- apply(my_matrix, 1, sum)
print("Row Sums:")
print(row_sums)

# Apply function to each column
col_products <- apply(my_matrix, 2, prod)
print("Column Products:")
print(col_products)

# Use lapply to calculate the mean of each column
col_means <- lapply(my_matrix, mean)
print("Column Means:")
print(col_means)

# Use sapply to calculate the standard deviation of each column
col_sd <- sapply(my_matrix, sd)
print("Column Standard Deviations:")
print(col_sd)

# Use tapply to calculate the sum of elements in each row
row_sums_taply <- tapply(my_matrix, 1, sum)
print("Row Sums (using tapply):")
print(row_sums_taply)