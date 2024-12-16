# Part 2:
# Think about a beverage you particularly enjoy (or perhaps a type of food!).
# In the same folder as teahouse.R, write a program to recommend various types
# of that beverage or food based on input from the user.
# Be as creative as you’d like: the only requirement is that you’re excited about
# your choice!

sweetness <- readline("Like Sweet Food (Yes/No)? ")
saltiness <- readline("Like Salty Food (Yes/No)? ")
sourness <- readline("Like Sour Food (Yes/No)? ")
bitterness <- readline("Like Bitter Food (Yes/No)? ")
spicyness <- readline("Like Spicy Food (Yes/No)? ")

# Validate inputs

if (sweetness == "Yes" && saltiness == "Yes" && sourness == "Yes" && bitterness == "Yes" && spicyness == "Yes") {
    print("Fusion Curry")
} else if (sweetness == "Yes" && saltiness == "Yes" && sourness == "Yes" && bitterness == "Yes" && spicyness == "No") {
    print("Honey Mustard Salad")
} else if (sweetness == "Yes" && saltiness == "Yes" && sourness == "Yes" && bitterness == "No" && spicyness == "Yes") {
    print("Sweet and Spicy Stir-fry")
} else if (sweetness == "Yes" && saltiness == "Yes" && sourness == "Yes" && bitterness == "No" && spicyness == "No") {
    print("Fruit Salad with Salt")
} else if (sweetness == "Yes" && saltiness == "Yes" && sourness == "No" && bitterness == "Yes" && spicyness == "Yes") {
    print("Dark Chocolate with Sea Salt and Chili")
} else if (sweetness == "Yes" && saltiness == "Yes" && sourness == "No" && bitterness == "Yes" && spicyness == "No") {
    print("Salted Dark Chocolate")
} else if (sweetness == "Yes" && saltiness == "Yes" && sourness == "No" && bitterness == "No" && spicyness == "Yes") {
    print("Sweet and Spicy Popcorn")
} else if (sweetness == "Yes" && saltiness == "Yes" && sourness == "No" && bitterness == "No" && spicyness == "No") {
    print("Salted Caramel")
} else if (sweetness == "Yes" && saltiness == "No" && sourness == "Yes" && bitterness == "Yes" && spicyness == "Yes") {
    print("Tangy Bitter Spicy Smoothie")
} else if (sweetness == "Yes" && saltiness == "No" && sourness == "Yes" && bitterness == "Yes" && spicyness == "No") {
    print("Bitter Lemonade")
} else if (sweetness == "Yes" && saltiness == "No" && sourness == "Yes" && bitterness == "No" && spicyness == "Yes") {
    print("Spicy Lemon Tart")
} else if (sweetness == "Yes" && saltiness == "No" && sourness == "Yes" && bitterness == "No" && spicyness == "No") {
    print("Lemon Pie")
} else if (sweetness == "Yes" && saltiness == "No" && sourness == "No" && bitterness == "Yes" && spicyness == "Yes") {
    print("Chili Dark Chocolate Cake")
} else if (sweetness == "Yes" && saltiness == "No" && sourness == "No" && bitterness == "Yes" && spicyness == "No") {
    print("Bitter Chocolate")
} else if (sweetness == "Yes" && saltiness == "No" && sourness == "No" && bitterness == "No" && spicyness == "Yes") {
    print("Spicy Candy")
} else if (sweetness == "Yes" && saltiness == "No" && sourness == "No" && bitterness == "No" && spicyness == "No") {
    print("Ice Cream")
} else if (sweetness == "No" && saltiness == "Yes" && sourness == "Yes" && bitterness == "Yes" && spicyness == "Yes") {
    print("Sour Spicy Pickles")
} else if (sweetness == "No" && saltiness == "Yes" && sourness == "Yes" && bitterness == "Yes" && spicyness == "No") {
    print("Sour Bitter Chips")
} else if (sweetness == "No" && saltiness == "Yes" && sourness == "Yes" && bitterness == "No" && spicyness == "Yes") {
    print("Spicy Lime Chips")
} else if (sweetness == "No" && saltiness == "Yes" && sourness == "Yes" && bitterness == "No" && spicyness == "No") {
    print("Salted Lemon Chips")
} else if (sweetness == "No" && saltiness == "Yes" && sourness == "No" && bitterness == "Yes" && spicyness == "Yes") {
    print("Bitter Spicy Pretzels")
} else if (sweetness == "No" && saltiness == "Yes" && sourness == "No" && bitterness == "Yes" && spicyness == "No") {
    print("Bitter Salted Nuts")
} else if (sweetness == "No" && saltiness == "Yes" && sourness == "No" && bitterness == "No" && spicyness == "Yes") {
    print("Spicy Salted Crackers")
} else if (sweetness == "No" && saltiness == "Yes" && sourness == "No" && bitterness == "No" && spicyness == "No") {
    print("Salted Crackers")
} else {
    print("Oops! We have no food in mind right at the moment for your choice combination! We are working on this :)")
}


