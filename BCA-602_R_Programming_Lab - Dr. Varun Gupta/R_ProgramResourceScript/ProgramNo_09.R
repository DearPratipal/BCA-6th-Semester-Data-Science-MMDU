# Scoping Rules in R
# -	Demonstrate local and global variables using functions.
# Experiment: Write an R program to demonstrate the difference between local and global variables 
# - by defining a variable outside a function and modifying it inside the function. 
# Display the values of the variable before and after function execution. 

# Global Variable
global_var <- 10
cat("Value of global variable before function execution:", global_var, "\n")

# Function to modify the global variable
modify_global <- function() {
  global_var <- 20
  cat("Value of global variable inside function:", global_var, "\n")
}

# Function call
modify_global()

# Display the value of the global variable after function execution
cat("Value of global variable after function execution:", global_var, "\n")