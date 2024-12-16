# Write a program that:

#  1. Prompts the user for a country’s name
#  2. Outputs, for each year of data:
#     The country's total happiness “score” rounded to two decimal places
#     The year in which the country achieved that score

# If a country is not included in a given year’s data, your program should instead output
# that data is “unavailable” for that year. Your program should still print data for
# other years in which there is data available.

# Read in all the CSV files (2020 to 2024)
year_2020 <- read.csv("2020.csv")
year_2021 <- read.csv("2021.csv")
year_2022 <- read.csv("2022.csv")
year_2023 <- read.csv("2023.csv")
year_2024 <- read.csv("2024.csv")

# Add in the years before binding
year_2020$year <- 2020
year_2021$year <- 2021
year_2022$year <- 2022
year_2023$year <- 2023
year_2024$year <- 2024

# Combine all the data together in one dataset
combined <- rbind(year_2020, year_2021, year_2022, year_2023, year_2024)

# Calculate the total happiness score (excluding first and last columns if necessary)
# Adjust column exclusions as needed
combined$total_score <- rowSums(combined[, -c(1, ncol(combined))], na.rm = TRUE)

# Round the total happiness score to 2 decimal places
combined$total_score <- round(combined$total_score, 2)

# Create a cleaned dataframe with relevant information
cleaned <- data.frame(
  "country" = combined$country,
  "year" = combined$year,
  "score" = combined$total_score
)

# Prompt the user for the country name
country_name <- readline("Country Name? ")

# Filter data for the specified country
cleaned_subset <- cleaned[cleaned$country == country_name, ]

# Check if the country exists in the dataset
if (nrow(cleaned_subset) == 0) {
  print(paste("2020 Score:", "unavailable"))
  print(paste("2021 Score:", "unavailable"))
  print(paste("2022 Score:", "unavailable"))
  print(paste("2023 Score:", "unavailable"))
  print(paste("2024 Score:", "unavailable"))
} else {
  # Print results for each year from 2020 to 2024
  for (yr in 2020:2024) {
    # Check if the year exists for the country
    if (yr %in% cleaned_subset$year) {
      score <- cleaned_subset$score[cleaned_subset$year == yr]
      print(paste(yr, "Score:", score))
    } else {
      print(paste(yr, "Score: unavailable"))
    }
  }
}