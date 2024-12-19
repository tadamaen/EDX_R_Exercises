# Function calculate_bmi
calculate_bmi <- function(weight_kg, height_m) {
  if(!is.numeric(weight_kg) | !is.numeric(height_m)) {
    stop("Weight and height must be integers or floats")
  } else if (weight_kg < 0 | height_m < 0) {
    stop("Weight and height must be positive values.")
  } else if (weight_kg >= 200 | height_m > 2.5) {
    warning("Please enter reasonable height and weight values.")
  } else if (weight_kg == 0 | height_m == 0) {
    warning("You are non-existent")
  } else {
    bmi<- weight_kg / (height_m ^ 2)
    return (round(bmi, 2))
  }
}