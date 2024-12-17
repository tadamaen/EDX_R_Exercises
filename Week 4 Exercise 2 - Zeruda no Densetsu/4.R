# Your next assignment is to help commemorate the work of Shigeru Miyamoto, one of the
# original creators of the Zelda series.

# In 4.R, load the tidied zelda tibble from zelda.RData with load.
# Update the tibble so that that it includes only the original releases for all titles
# on which Shigeru Miyamoto was a producer. If any title had two different releases in its
# first year (perhaps for two different systems), include both.

# Sort the releases by year, from oldest to newest. If any two releases have the same year,
# sort them alphabetically by title, followed by system.

# Load the existing RData file
load(file = "zelda.RData")

# Include only the rows where the producer is Shigeru Miyamoto in tidyverse
# Sort the rows in the correct order subsequently
zelda <- zelda %>%
         filter(str_detect(producers, "Shigeru Miyamoto")) %>%
         group_by(title) %>%
         filter(year == min(year)) %>%
         arrange(system) %>%
         arrange(title) %>%
         arrange(year)

# Save into the file
save(zelda, file = "4.RData")