# Try out all the test cases!
library(testthat)
source("believe.R")

# 1st Test - Determining accurate values of BMI
test_that("Accurate values of BMI:", {
    expect_equal(calculate_bmi(55, 1.7), 19.03)
    expect_equal(calculate_bmi(76, 1.3), 44.97)
    expect_equal(calculate_bmi(65.54328, 1.954322), 17.16)
})

# 2nd Test - Test cases for incorrect data type errors
test_that("Wrong input data type values:", {
    expect_error(calculate_bmi("55", 1.7))
    expect_error(calculate_bmi("67", "2.33444"))
    expect_error(calculate_bmi(NA, 1.8))
    expect_error(calculate_bmi(NA, NA))
    expect_error(calculate_bmi(NaN, -Inf))
})

# 3rd Test - Test cases for negative values/zero errors
test_that("Negative values/ Zero:", {
    expect_error(calculate_bmi(-3, -5))
    expect_error(calculate_bmi(-60, 1.8))
    expect_warning(calculate_bmi(0, 0))
    expect_warning(calculate_bmi(75, 0))
    expect_error(calculate_bmi(-90, 0))
})

# 4th Test - Test cases for absurd height/weight values
test_that("Absurd height/weight values:", {
    expect_warning(calculate_bmi(500, 1.6))
    expect_warning(calculate_bmi(80, 5.0))
    expect_warning(calculate_bmi(1000, 100))
    expect_warning(calculate_bmi(200.00001, 2.5000001))
})
