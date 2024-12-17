# In 1.R, organize the data in zelda.csv to get it ready for analysis.
# Save the cleaned data as a tibble named zelda in zelda.RData.

# Make sure the tibble follows these tidy data rules:

# Each row should be one release of a The Legend of Zelda game.
# Keep in mind, a single game is often released multiple times on different systems.
# Each column should be one way a release can differ.
# For example, releases can differ based on release year, system, or the people
# involved in making it.
# Each cell should be a single piece of information.

# Notice how the tibble follows the principles of tidy data:
#    Each row is a release.
#    Each column is information about a release.
#    Each cell is a single piece of information.

# A list of names can count as “a single piece of information” for this problem’s purposes.
# Capitalization of column names does matter!

# Import the csv file (Still in long format)
zelda <- read_csv("zelda.csv")

# First split up the year and the system into 2 separate columns
zelda <- zelda %>%
         separate(release, into = c("year", "system"), sep = " - ")

# Second, due to the need to make the column names have small letter, we should
# change the letters to all small letters first
zelda$role <- str_to_lower(zelda$role)

# Next, we need to change the data from a long to a wide format
zelda <- zelda %>%
         pivot_wider(id_cols = c(title, year, system),
                     names_from = role,
                     values_from = names)

# Save into the file
save(zelda, file = "zelda.RData")