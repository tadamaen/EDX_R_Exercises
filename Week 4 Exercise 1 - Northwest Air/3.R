# Load the air.RData file from the initial problem
load(file = "air.RData")

# In addition to focusing on the largest sources of pollutants,
# analysts might focus on particular geographic regions. Choose one of the counties
# in Oregon from this list. Find all sources of pollutants in that county.

# Transform the tibble so that it only includes data for the county of your choice.
air <- air %>%
       filter(county == 'OR - Lake')

# Save the resulting table
save(air, file = "3.RData")
