# 	Conditional Statements Using if if-else and Nested if-else Statements
# -	Implement decision-making using if statements. 
# Experiment: Write a program to check leap year in R.

# Check if a year is a leap year
year <- 2024
if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  cat(year, "is a leap year.\n")
} else {
  cat(year, "is not a leap year.\n")
}
print("---------------------------------------------")

# Check if a number is positive, negative, or zero
number <- -5
if (number > 0) {
  cat(number, "is positive.\n")
} else if (number < 0) {
  cat(number, "is negative.\n")
} else {
  cat(number, "is zero.\n")
}
print("---------------------------------------------")

# Check if a number is even or odd
number <- 7
if (number %% 2 == 0) {
  cat(number, "is even.\n")
} else {
  cat(number, "is odd.\n")
}
print("---------------------------------------------")

# Nested if-else to determine grade based on score
score <- 85
if (score >= 90) {
  cat("Grade: A\n")
} else if (score >= 80) {
  cat("Grade: B\n")
} else if (score >= 70) {
  cat("Grade: C\n")
} else if (score >= 60) {
  cat("Grade: D\n")
} else {
  cat("Grade: F\n")
}
print("---------------------------------------------")

# Take user input for age and determine if they are a child, teenager, adult, or senior
age <- as.integer(readline(prompt = "Enter your age: "))
if (age < 13) {
  cat("You are a child.\n")
} else if (age < 20) {
  cat("You are a teenager.\n")
} else if (age < 65) {
  cat("You are an adult.\n")
} else {
  cat("You are a senior.\n")
}
print("---------------------------------------------")