# Load the air.RData file from the initial problem
load(file = "air.RData")

# So far, you’ve identified the largest sources of pollutants across the entire state
# of Oregon, as well as within a single county. Now, find the single largest pollutant
# source for each county.

# Transform the tibble so that it includes the single row with the highest value in the
# emissions column for each county.
air <- air %>%
       group_by(county) %>%
       slice_max(emissions, n = 1) %>%
       ungroup()

# Save the resulting table
save(air, file = "5.RData")