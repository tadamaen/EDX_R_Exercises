# Read in the two csv files
bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")

# Combine the two csv files into 1 output in R
dataset <- rbind(bus, rail)

# Calculate the reliability for each row of the dataset
dataset$reliability <- dataset$numerator / dataset$denominator

# Prompt the user to enter a route they intend to take
route_taken <-readline("Which route do you want to take (Rail Line/Bus Service Number)? ")

# Subset the data to only include rows where the route is the same as the user input
data_subset <- dataset[dataset$route == route_taken, ]

if (nrow(data_subset) == 0) {
    print("Invalid route! Try another route!")
} else {
    # Split the data subset even further according to whether the trip is peak or off peak
    data_subset_peak <- data_subset[data_subset$peak == "PEAK", ]
    data_subset_off_peak <- data_subset[data_subset$peak == "OFF_PEAK", ]

    # Calculate the mean of reliability of both the peak and off peak data subsets
    mean_reliability_peak <- round(100 * mean(data_subset_peak$reliability), 0)
    mean_reliability_off_peak <- round(100 * mean(data_subset_off_peak$reliability), 0)

    # Printing the outputs
    print(paste0("Reliability For Peak Hours: ", mean_reliability_peak, "%"))
    print(paste0("Reliability For Off Peak Hours: ", mean_reliability_off_peak, "%"))
}
