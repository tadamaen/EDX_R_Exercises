# Importing the tidyverse package
library(tidyverse)

# Read 'air.csv' into a tibble called air
air <- read_csv("air.csv")

# Ensure the air tibble includes only the following columns:
#    1. state, renamed from State
#    2. county, renamed from State-County
#    3. pollutant, renamed from POLLUTANT
#    4. emissions, renamed from Emissions (Tons)
#    5. level_1, renamed from SCC LEVEL 1
#    6. level_2, renamed from SCC LEVEL 2
#    7. level_3, renamed from SCC LEVEL 3
#    8. level_4, renamed from SCC LEVEL 4

# We can use the rename function in tidyverse dplyr package to rename all columns at once
air <- air %>%
       rename(state = `State`,
              county = `State-County`,
              pollutant = `POLLUTANT`,
              emissions = `Emissions (Tons)`,
              level_1 = `SCC LEVEL 1`,
              level_2 = `SCC LEVEL 2`,
              level_3 = `SCC LEVEL 3`,
              level_4 = `SCC LEVEL 4`) %>%
       select(state, county, pollutant, emissions, level_1, level_2, level_3, level_4)

# Save the resulting air table into a file
save(air, file = "air.RData")
