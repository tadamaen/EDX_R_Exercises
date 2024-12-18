# The only requirement for this problem is that you produce a visualization you care
# about, that is interesting to you, and that you feel proud of. Oh, and that you
# save the visualization in a file called visualization.png!

# Install and import the necessary packages
library(tidyverse)
library(ggplot2)
library(forcats)

# Read the excel file into R
data <- read_csv("safe_sanitation.csv")

# Rename the column to make it shorter
data <- data %>%
        rename(`Percentage Safe Sanitation` = `Usage of safely managed drinking water services`)

# Round the figures to the nearest whole number for easy readability
data$`Percentage Safe Sanitation` <- round(data$`Percentage Safe Sanitation`, 0)

# We want to find out the population percentage of safe sanitation in Southeast
# Asian countries in 2020 using a bar chart.

# Using Tidyverse
data <- data %>%
        filter(Country %in% c("Cambodia", "Vietnam", "Laos", "Myanmar",
                              "Singapore", "Malaysia", "Indonesia", "Thailand",
                              "Brunei", "Philippines")) %>%
        filter(Year == 2020)

# For this exercise, we will impute values of safe sanitation for NA values
# for Brunei and Thailand
# Set Brunei to 90% and Thailand to 35%

data$`Percentage Safe Sanitation`[data$Country == "Brunei"] = 90
data$`Percentage Safe Sanitation`[data$Country == "Thailand"] = 35

# Visualize the data using a bar chart in ggplot2
p <- ggplot(data, aes(x = fct_reorder(Country, `Percentage Safe Sanitation`, .desc = TRUE), y = `Percentage Safe Sanitation`, fill = `Percentage Safe Sanitation`)) +
     geom_col(show.legend = FALSE) +
     geom_hline(yintercept = 50, linetype = 2) +
     geom_text(aes(label = ifelse(`Percentage Safe Sanitation` <= 50, "Poor", "Good")),
            vjust = -0.5, size = 3, color = "black") +
     scale_fill_viridis_c() +
     labs(x = "SEA Country", y = "Safe Sanitation Percentage",
          title = "Population Percentage Having Safe Sanitation In 2020 For SEA Countries") +
     theme(axis.text.x = element_text(size = 8))
     theme_bw()

# Saving the plot
ggsave("visualization.png", plot = p, width = 6, height = 4, units = "in")
