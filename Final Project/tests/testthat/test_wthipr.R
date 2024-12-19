# Third Function - Waist To Hip Ratio Calculations

# 1st Test - Determining accurate values of Waist To Hip Ratio
test_that("Accurate values of Waist To Hip Ratio:", {
  expect_equal(calculate_wthipr(60, 75), 0.8)
  expect_equal(calculate_wthipr(65.0, 70.0), 0.93)
  expect_equal(calculate_wthipr(58.45567, 59.38374), 0.98)
})

# 2nd Test - Test cases for incorrect data type errors
test_that("Wrong input data type values:", {
  expect_error(calculate_wthipr("65", 78))
  expect_error(calculate_wthipr("68", "70"))
  expect_error(calculate_wthipr(70, NA))
  expect_error(calculate_wthipr(NA, NA))
  expect_error(calculate_wthipr(NaN, -Inf))
})

# 3rd Test - Test cases for negative values/zero errors
test_that("Negative values/ Zero:", {
  expect_error(calculate_wthipr(-65, -60))
  expect_error(calculate_wthipr(-90, 95))
  expect_warning(calculate_wthipr(0, 0))
  expect_warning(calculate_wthipr(75, 0))
  expect_error(calculate_wthipr(-85, 0))
})

# 4th Test - Test cases for absurd hip/waist circumference values
test_that("Absurd hip/waist circumference values:", {
  expect_warning(calculate_wthipr(500, 500))
  expect_warning(calculate_wthipr(70, 1000))
  expect_warning(calculate_wthipr(10, 40))
  expect_warning(calculate_wthipr(70, 19))
  expect_warning(calculate_wthipr(100.00001, 100.00001))
})
