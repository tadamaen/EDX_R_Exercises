# Your next assignment is to identify the original (first) release for each Zelda title.

# In 3.R, load the tidied zelda tibble from zelda.RData with load. Update the tibble so
# that it includes only the first release(s) for each Zelda title.
# If a title had two different releases in its first year (perhaps for two different systems),
# include both.

# Sort the releases by year, from oldest to newest. If any two releases have the same year,
# sort them alphabetically by title, followed by system.

# Load the existing RData file
load(file = "zelda.RData")

# Including the first releases of the different zenda title series in tidyverse
# Sort the rows in the correct order subsequently
zelda <- zelda %>%
         group_by(title) %>%
         filter(year == min(year)) %>%
         arrange(system) %>%
         arrange(title) %>%
         arrange(year)

# Save into the file
save(zelda, file = "3.RData")