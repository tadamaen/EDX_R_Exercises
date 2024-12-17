# Load the air.RData file from the initial problem
load(file = "air.RData")

# Some pollutants tend to be emitted at higher rates than others.
# For each pollutant, find its total emissions across the entire state of Oregon.

# Summarize the data in the tibble to find the total emissions for each pollutant.
# Sort the pollutants from highest to lowest emissions.
air <- air %>%
       select(pollutant, emissions) %>%
       group_by(pollutant) %>%
       summarize(emissions = sum(emissions)) %>%
       arrange(desc(emissions)) %>%
       ungroup()

# Save the resulting table
save(air, file = "6.RData")