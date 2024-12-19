# Fourth Function - Obesity Status

# 1st Test - Determining accurate outputs of obesity status
test_that("Accurate outputs of Obesity Status:", {
  expect_equal(obesitychances(1.6, 68, 70, 75), "Your chances of being overweight is 33%")
  expect_equal(obesitychances(1.7, 65, 50, 65), "Your chances of being overweight is 0%")
  expect_equal(obesitychances(1.9, 120, 55, 80), "Your chances of being overweight is 33%")
  expect_equal(obesitychances(1.3, 110, 80, 70), "Your chances of being overweight is 100%")
  expect_equal(obesitychances(1.75, 50.0, 80.5, 70.2), "Your chances of being overweight is 33%")
})

# Other Tests - For warnings/errors
test_that("Errors/Warnings when calculating Obesity Status:", {
  expect_error(obesitychances(-10, 90, 72, 90))
  expect_error(obesitychances(NA, NA, 1000, -100))
  expect_warning(obesitychances(1.8, 1000, 80, 70))
})