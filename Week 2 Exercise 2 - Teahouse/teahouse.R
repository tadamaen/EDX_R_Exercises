# Part 1:

# Write a program that prompts a user twice: first for their taste in flavor,
# and second for their preference for caffeine. Then, recommend teas based on the
# following logic:

#    Recommend green tea if a user prefers caffeine and a light flavor.
#    Recommend black tea if a user prefers caffeine and a bold flavor.
#    Recommend chamomile tea if a user prefers no caffeine and a light flavor.
#    Recommend rooibos tea if a user prefers no caffeine and a bold flavor.

# A user should enter either “Light” or “Bold” for their taste in flavor and “Yes” or
# “No” for their preference for caffeine. If a user does not enter a valid choice for
# either one, do not recommend a tea: instead, remind them of the proper inputs.

# We can make use of a nested conditional statement here (if, else if, else)

# Code:
flavor <- readline("What is your prefered flavor (Light/Bold)? ")
caffeine <- readline("Do you prefer caffeine (Yes/No)? ")

if((flavor == "Light") & (caffeine == "Yes")) {
    print("green tea")
} else if ((flavor == "Light") & (caffeine == "No")) {
    print("chamomile tea")
} else if ((flavor == "Bold") & (caffeine == "Yes")) {
    print("black tea")
} else if ((flavor == "Bold") & (caffeine == "No")) {
    print("rooibos tea")
} else {
    print("Please input properly")
}