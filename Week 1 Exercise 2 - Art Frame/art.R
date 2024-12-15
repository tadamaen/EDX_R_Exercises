# Modify the data frame stored as art to make art of your choice.
# You have creative freedom to:
# 1. Add rows and columns
# 2. Rename columns

# Consider avoiding emoji: when printed, they appear wider than other characters
# and will break the vertical alignment of your columns.

# The only specifications you must adhere to are the following:
# 1. You should store your data frame using an object called art.
# 2. You should print your data frame at the end of your program.
# 3. Your data frame should contain at least 3 rows and 3 columns.

art <- data.frame(
  A = c("x", "$", "x", "$", "x", "$", "x", "$"),
  R = c("@", "$", "@", "$", "@", "$", "@", "$"),
  T = c("^", "!", "^", "!", "^", "!", "^", "!"),
  I = c(")", "(", ")", "(", ")", "(", ")", "("),
  S = c("%", "~", "%", "~", "%", "~", "%", "~"),
  F = c("J", "O", "L", "I", "E", "L", "I", "M"),
  U = c("E", "L", "L", "E", "N", "L", "E", "E"),
  N = c("&", "$", "&", "$", "&", "$", "&", "$")
)

print(art)
