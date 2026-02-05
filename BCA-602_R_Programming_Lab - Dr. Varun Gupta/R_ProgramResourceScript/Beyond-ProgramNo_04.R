# Write a program to check leap year or not. 
# Check by user input.

# Clean the console & environment
cat("\014") # Clear console
rm(list = ls()) # Clear environment

# User Input & Store
# year <- as.integer(readline("Enter a year: "))
year <- 2024  # Example year for testing purposes

# Function to check if a year is a leap year
leap_year <- function(year) {
  if (year %% 4 == 0 && (year %% 100 != 0 || year %% 400 == 0)) {
    print(paste(year, "is a leap year."))
  } else {
    print(paste(year, "is not a leap year."))
  }
}

# Test the function
# year <- 2020
# if (leap_year(year)) {
#   print(paste(year, "is a leap year."))
# } else {
#   print(paste(year, "is not a leap year."))
# }

# Output: "2020 is a leap year."

# Check if the year is a leap year
leap_year(year) # Output will vary based on user input.
