# As Nintendo expands its leadership team, your final assignment is to identify the
# original releases for all titles with more than 1 producer.

# In 5.R, load the tidied zelda tibble from zelda.RData with load. Update the tibble to
# include only the first release(s) for each title with more than 1 producer.
# If such a title had two different releases in its first year (perhaps for two different
# systems), include both.

# Sort the releases by year, from oldest to newest. If any two releases have the same year,
# sort them alphabetically by title, followed by system.

# Load the existing RData file
load(file = "zelda.RData")

# Include only the rows where there are more than 1 producer in tidyverse
# Sort the rows in the correct order subsequently
zelda <- zelda %>%
         filter(str_detect(producers, ",")) %>%
         group_by(title) %>%
         filter(year == min(year)) %>%
         arrange(system) %>%
         arrange(title) %>%
         arrange(year)

# Save into the file
save(zelda, file = "5.RData")