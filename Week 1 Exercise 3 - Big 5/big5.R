# Converting the tsv file using read.table (NOT read.csv)

big_five <- read.table("tests.tsv", sep = "\t", header = TRUE)

# Modification 1:
# Convert the gender column from a numeric representation to a textual representation
# Gender:	Participant's reported gender (0 = Unanswered, 1 = Male, 2 = Female, 3 = Other)

big_five$gender[big_five$gender == 0] <- "Unanswered"
big_five$gender[big_five$gender == 1] <- "Male"
big_five$gender[big_five$gender == 2] <- "Female"
big_five$gender[big_five$gender == 3] <- "Other"

# Modification 2:
# Add the following columns:
  # extroversion, a column that represents each test’s result on the extroversion trait
  # neuroticism, a column that represents each test’s result on the neuroticism trait
  # agreeableness, a column that represents each test’s result on the agreeableness trait
  # conscientiousness, a column that represents each test’s result on the conscientiousness trait
  # openness, a column that represents each test’s result on the openness trait

# Test results for each Big 5 personality trait should be computed as follows:
# Sum the values of the relevant columns.
# Divide by the maximum possible sum for those columns (which is 15!).
# Round the test results to 2 decimal places

big_five$extroversion = round((big_five$E1 + big_five$E2 + big_five$E3) / 15, 2)
big_five$neuroticism = round((big_five$N1 + big_five$N2 + big_five$N3) / 15, 2)
big_five$agreeableness = round((big_five$A1 + big_five$A2 + big_five$A3) / 15, 2)
big_five$conscientiousness = round((big_five$C1 + big_five$C2 + big_five$C3) / 15, 2)
big_five$openness = round((big_five$O1 + big_five$O2 + big_five$O3) / 15, 2)

# Placing the modified dataset into a csv file called analysis.csv
write.csv(big_five, "analysis.csv", row.names = FALSE)
