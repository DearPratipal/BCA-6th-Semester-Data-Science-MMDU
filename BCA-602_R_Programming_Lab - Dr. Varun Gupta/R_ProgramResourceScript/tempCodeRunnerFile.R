# Reading data from a CSV file
data <- read.csv("data.csv")

# Display first few rows
cat("First 6 rows of the data:\n")
head(data)

# Display summary statistics
cat("\nSummary Statistics:\n")
summary(data)

# Writing data to a new CSV file
write.csv(data, "output_data.csv", row.names = FALSE)

cat("\nData has been successfully written to output_data.csv\n")
