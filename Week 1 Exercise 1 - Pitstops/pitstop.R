csv_file <- read.csv(readline("What file do you want to use? "))

# Question 1: Find the total number of pitstops

# The total number of pitstops is simply the number of rows of the csv files
nrow(csv_file)

# Question 2: The duration of the shortest pit-stop

# We need to first obtain the time column of the csv file, then subsequently
# obtain the minimum value of the column
min(csv_file$time)

# Question 3: The duration of the longest pit-stop

# We need to first obtain the time column of the csv file, then subsequently
# obtain the maximum value of the column
max(csv_file$time)

# Question 4: The total time spent on pit stops during the race, across all racers

# We need to first obtain the time column of the csv file, then subsequently
# sum up all the values of the column
sum(csv_file$time)
