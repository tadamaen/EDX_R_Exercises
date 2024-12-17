# Load the air.RData file from the initial problem
load(file = "air.RData")

# To sustainably improve air quality, analysts often focus their efforts on particular
# sources of pollutants. To identify which sources might need the most attention, find
# the largest sources of pollutants in Oregon.

# Update the tibble by sorting all rows by the emissions column, highest value to lowest.
air <- air %>%
       arrange(desc(emissions))

# Save the resulting table
save(air, file = "2.RData")
