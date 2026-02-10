# For Loops Implementation and While Loop Implementation
# Use for loop for repetitive tasks and sequence generation. 
# Experiment: 
# 1.	Write a user defined function to generate Fibonacci series using while loop.
# 2.	Generate the multiplication table of a given number using a for loop. 
# 3.	Write a program in R to make a simple calculator. 

# 1. Fibonacci series using while loop
fibonacci <- function(n) {
  a <- 0
  b <- 1
  count <- 0
  
  if (n <= 0) {
    return("Please enter a positive integer.")
  } else if (n == 1) {
    return(a)
  } else {
    fib_series <- c(a, b)
    while (count < n - 2) {
      next_fib <- a + b
      fib_series <- c(fib_series, next_fib)
      a <- b
      b <- next_fib
      count <- count + 1
    }
    return(fib_series)
  }
}

# Example usage:
n <- 10
result <- fibonacci(n)
print(result)

# 2. Multiplication table of a number using for loop
number <- 5
cat("Multiplication Table of", number, ":\n")
for (i in 1:10) {
  result <- number * i
  cat(number, "x", i, "=", result, "\n")
}

# 3. Simple calculator program
calculator <- function() {
  repeat {
    cat("\n--- Simple Calculator ---\n")
    cat("1. Addition\n")
    cat("2. Subtraction\n")
    cat("3. Multiplication\n")
    cat("4. Division\n")
    cat("5. Exit\n")
    
    choice <- as.integer(readline("Enter your choice (1-5): "))
    
    if (choice == 5) {
      cat("Calculator closed.\n")
      break
    }
    
    num1 <- as.numeric(readline("Enter first number: "))
    num2 <- as.numeric(readline("Enter second number: "))
    
    if (choice == 1) {
      cat("Result =", num1 + num2, "\n")
      
    } else if (choice == 2) {
      cat("Result =", num1 - num2, "\n")
      
    } else if (choice == 3) {
      cat("Result =", num1 * num2, "\n")
      
    } else if (choice == 4) {
      if (num2 == 0) {
        cat("Error: Division by zero not allowed\n")
      } else {
        cat("Result =", num1 / num2, "\n")
      }
      
    } else {
      cat("Invalid choice! Try again.\n")
    }
  }
}

# Function call
calculator()