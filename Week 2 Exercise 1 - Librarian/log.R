# Reading the 2 csv files
books <- read.csv("books.csv")
authors <- read.csv("authors.csv")

# Question 1: The Writer

# We know from the paragraph that the first reader is searching for a book whose
# author's name is Mia Morgan

# Filtering the books whose author is Mia Morgan
subset_one <- books[books$author == "Mia Morgan", ]

# Extracting the title from the book row
subset_one$title

# Question 2 : The Musician

# We are given two pieces of information:
#    1. Topic of the book is something related to music
#    2. The book is published in 1613

# Filtering the book where the topic is music and dates back to 1613
subset_two <- books[books$year == 1613 & books$topic == 'Music', ]

# Extracting the title from the book row
subset_two$title

# Question 3: The Traveler

# We are given two pieces of information:
#    1. Book was published in 1775
#    2. Book has two possible author names - Lysandra Silverleaf and Elena Petrova

# Filtering the book based on year 1775 and author names
subset_three <- books[books$year == 1775 & (books$author == "Lysandra Silverleaf" | books$author == "Elena Petrova"), ]

# Extracting the title from the book row
subset_three$title

# Question 4: The Painter

# We are given three pieces of information:
#    1. Book has between 200 and 300 pages
#    2. Book is published in 1990 or 1992 (not 1991)
#    3. Book's topic is on art

# Filtering the book based on year 1990/1992 and number of pages
subset_four <- books[(books$year == 1990 | books$year == 1992) & (books$pages >= 200 & books$pages <= 300) & books$topic == "Art", ]

# Extracting the title from the book row
subset_four$title

# Question 5: The Scientist

# Filtering the book which contains "Quantum Mechanics" in the title
subset_five <- books[grepl("Quantum Mechanics", books$title), ]

# Extracting the title from the book row
subset_five$title

# Question 6: The Teacher

# We are given three pieces of information:
#    1. The book is from the town of Zenthia
#    2. The book is published in 1700s
#    3. The book is on the topic of education

# However, we cannot find directly as the town information is only available in
# authors, not books. Unless we perform joining (later on), we need to apply at least
# two steps to get the book for the teacher!

# Step 1: Obtain the name of the author that is in the town of Zenthia
author_subset <- authors[authors$hometown == "Zenthia", ]

# We observe that the two authors are Jack Parker and Kenji Sato

# Step 2: Filtering the book based on topic and year, together with the authors found in Step 1
subset_six <- books[(books$topic == "Education") & (books$year %in% c(1700:1799)) & (books$author == "Jack Parker" | books$author == "Kenji Sato"), ]

# Extracting the title from the book row
subset_six$title
