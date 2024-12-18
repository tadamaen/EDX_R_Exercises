# Apply different test cases of the various scenerios

# Import the testthat library
library(testthat)

# Standard test case (copied from github sample exercise preview)
test_that("str_length is number of characters", {
  expect_equal(str_length("a"), 1)
  expect_equal(str_length("ab"), 2)
  expect_equal(str_length("abc"), 3)
})

# Does str_length return the expected output for non-alphabetical characters,
# such as whitespace, punctuation, or emoji?
test_that("str_length including non-alphabetical characters", {
  expect_equal(str_length("mickey mouse"), 12)
  expect_equal(str_length("d a m a e n"), 11)
  expect_equal(str_length("@money$$$money$$$@"), 18)
  expect_equal(str_length("HUGO, DOGGY $10000"), 18)
  expect_equal(str_length("WhatAboutMe? 🦁🦁🦁"), 16)
})


# Does str_length return the expected output for special values such as NA, NaN,
# Inf, and -Inf?
test_that("str_length for special values", {
  expect_equal(str_length(NA), NA_integer_)
  expect_equal(str_length(c(NA, NA)), c(NA_integer_, NA_integer_))
  expect_equal(str_length(NaN), 3)
  expect_equal(str_length(Inf), 3)
  expect_equal(str_length(-Inf), 4)
})

# Does str_length return the expected output for vector inputs?
test_that("str_length for special values", {
  expect_equal(str_length(c("123", "456", "7890")), c(3, 3, 4))
  expect_equal(str_length(c("%^$$#", NA, NA, 2468)), c(5, NA, NA, 4))
  expect_equal(str_length(c(NaN, Inf, -Inf, 0)), c(3, 3, 4, 1))
})

# What about a data frame as input?

# Example dataframe
df <- data.frame(
  name = c("Alice", "Bob", "Catherine", "Dan"),
  age = c(25, 30, 22, 35)
)

test_that("str_length calculates correct string lengths for dataframe column", {
  result <- str_length(df$name)
  expected <- c(5, 3, 9, 3)
  expect_equal(result, expected)
})