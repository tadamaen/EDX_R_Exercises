# Load the air.RData file from the initial problem
load(file = "air.RData")

# In professional air quality reports, analysts will often calculate total emissions
# for broad categories of sources. In fact, the level_1 column in the air tibble
# lists the broad category in which a specific source is included!
# For each category of source in level_1, calculate the total emissions of each pollutant.

# Transform the tibble to find the total emissions of each pollutant from each of the
# level_1 source categories. Sort the rows first alphabetically by source name,
# then alphabetically by pollutant name.
air <- air %>%
       select(level_1, pollutant, emissions) %>%
       rename(source = level_1) %>%
       group_by(source, pollutant) %>%
       summarize(emissions = sum(emissions)) %>%
       arrange(pollutant) %>%
       arrange(source) %>%
       ungroup()

# Save the resulting table
save(air, file = "7.RData")