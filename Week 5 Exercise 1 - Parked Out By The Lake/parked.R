# Installing the libraries for use
library(tidyverse)
library(ggplot2)
library(forcats)

# Reading the text file of your choice into R
lyrics <- readLines("lyrics/chapman.txt")

# Combine the lines into a single string
full_text <- paste(lyrics, collapse = " ")

# Remove punctuation
clean_text <- gsub("[[:punct:]]", "", full_text)

# Split into individual words
words <- unlist(strsplit(clean_text, " "))

# Converting the words into a data frame before cleaning
data <- data.frame(words)

# Converting all rows of words to title format to prevent duplication later on
data$words <- str_to_title(data$words)

# Counting the number of each word used in the song
data <- data %>%
        group_by(words) %>%
        summarize(count = n()) %>%
        arrange(desc(count)) %>%
        rename(word = words)

# Filtering out words that do appear more than 4 times
# This is to prevent too many columns in the column chart later on
data <- data %>%
        filter(count > 4)

# Visualizing the data using the ggplot2 package
p <- ggplot(data, aes(x = fct_reorder(word, count, .desc = TRUE), y = count, fill = count)) +
     geom_col(show.legend = FALSE) +
     labs(x = "Song Words", y = "Number Of Times", title = "Number Of Times Words Appear In Chapman") +
     scale_fill_viridis_c() +
     theme_bw()

# Saving the plot
ggsave("lyrics.png", plot = p, width = 6, height = 4, units = "in")
