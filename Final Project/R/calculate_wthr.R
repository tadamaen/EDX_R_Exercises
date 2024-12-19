# Function calculate_wthr
calculate_wthr <- function(waist_cir, height_cm) {
  if(!is.numeric(waist_cir) | !is.numeric(height_cm)) {
    stop("Waist circumference and height must be integers or floats")
  } else if (waist_cir < 0 | height_cm < 0) {
    stop("Waist circumference and height must be positive values")
  } else if (waist_cir >= 100 | height_cm >= 250 | waist_cir <= 20 | height_cm <= 30) {
    warning("Please enter reasonable waist circumference and height values.")
  } else {
    wthr <- waist_cir / height_cm
    return (round(wthr, 2))
  }
}