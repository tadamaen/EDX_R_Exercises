# Your first assignment is to summarize the number of Zelda releases in each year.

# In 2.R, load the tidied zelda tibble from zelda.RData with load.
# Update the tibble by summarizing the number of releases in each year.
# Sort the rows by the number of releases in a given year, most to least.

# Load the existing RData file
load(file = "zelda.RData")

# Summarize the Zelda releases in each year using tidyverse
zelda <- zelda %>%
         group_by(year) %>%
         summarize(releases = n()) %>%
         arrange(desc(releases)) %>%
         ungroup()

# Save into the file
save(zelda, file = "2.RData")