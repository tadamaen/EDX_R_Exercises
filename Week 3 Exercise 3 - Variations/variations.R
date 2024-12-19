# Define all the lowercase letters
letters <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
             "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z")

# Define 1st function - random_character
random_character <- function() {
  return (sample(letters, size = 1, replace = TRUE))
}

# Define 2nd function - print_sequence
print_sequence <- function(length) {
  for (i in 1:length) {
    letter <- random_character()
    cat(letter)
    Sys.sleep(0.25)
  }
}

print_sequence(20)