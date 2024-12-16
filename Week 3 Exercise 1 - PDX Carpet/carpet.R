# Read in the csv file
visitors <- read.csv("visitors.csv")

# Define the variables years and visitors
years <- visitors$year
visitors_numbers <- visitors$visitors

# Function 1 - Calculating the growth rate
calculate_growth_rate <- function(years, visitors) {
    growth_rate <- ifelse(years == 2002, NA, (visitors - 6.06) / (years - 2002))
}

# Add an additional vector to capture all the growth rates to be used later
growth_rate_statistics <- calculate_growth_rate(years, visitors_numbers)

# Function 2 - Predicting the visitors by year
predict_visitors <- function(years, visitors, year) {
    if (year > 2014) {
      visitors <- 8.34 + ((year - 2014) * growth_rate_statistics[length(growth_rate_statistics)])
    } else {
      visitors <- 8.34
    }
}

# Input for the year that user wants to impute
year <- as.integer(readline("Year: "))

# Find the vector containing all the values of predicted visitors
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
