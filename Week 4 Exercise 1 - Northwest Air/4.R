# Load the air.RData file from the initial problem
load(file = "air.RData")

# Combine your analyses from 2.R and 3.R
# Transform the tibble so that it only includes data for the county of your choice
# and sorts the data by the emissions column, highest value to lowest.
air <- air %>%
       filter(county == 'OR - Lake') %>%
       arrange(desc(emissions))

# Save the resulting table
save(air, file = "4.RData")