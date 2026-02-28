# Display current system date
current_date <- Sys.Date()
cat("Current Date:", current_date, "\n")

# Display current system date and time
current_time <- Sys.time()
cat("Current Date & Time:", current_time, "\n")

# Pause execution for 5 seconds
cat("Program paused for 5 seconds...\n")
Sys.sleep(5)

cat("Program resumed after 5 seconds.\n")
