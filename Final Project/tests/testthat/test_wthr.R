# Second Function - Waist To Height Ratio Calculations

# 1st Test - Determining accurate values of Waist To Height Ratio
test_that("Accurate values of Waist To Height Ratio:", {
  expect_equal(calculate_wthr(60, 165), 0.36)
  expect_equal(calculate_wthr(58.5, 190.5), 0.31)
  expect_equal(calculate_wthr(63.49826, 179.48271), 0.35)
})

# 2nd Test - Test cases for incorrect data type errors
test_that("Wrong input data type values:", {
  expect_error(calculate_wthr("75", 160))
  expect_error(calculate_wthr("68", "195"))
  expect_error(calculate_wthr(70, NA))
  expect_error(calculate_wthr(NA, NA))
  expect_error(calculate_wthr(NaN, -Inf))
})

# 3rd Test - Test cases for negative values/zero errors
test_that("Negative values/ Zero:", {
  expect_error(calculate_wthr(-50, -145))
  expect_error(calculate_wthr(-70, 191))
  expect_warning(calculate_wthr(0, 0))
  expect_warning(calculate_wthr(65, 0))
  expect_error(calculate_wthr(-90, 0))
})

# 4th Test - Test cases for absurd height/circumference values
test_that("Absurd height/circumference values:", {
  expect_warning(calculate_wthr(400, 170))
  expect_warning(calculate_wthr(70, 500))
  expect_warning(calculate_wthr(75, 5))
  expect_warning(calculate_wthr(15, 180))
  expect_warning(calculate_wthr(100.00001, 250.00001))
})