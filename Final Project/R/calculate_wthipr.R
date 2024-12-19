# Function calculate_wthipr
calculate_wthipr <- function(waist_cir, hip_cir) {
  if(!is.numeric(waist_cir) | !is.numeric(hip_cir)) {
    stop("Waist circumference and hip circumference must be integers or floats")
  } else if (waist_cir < 0 | hip_cir < 0) {
    stop("Waist circumference and hip circumference must be positive values")
  } else if (waist_cir >= 100 | hip_cir >= 100 | waist_cir <= 20 | hip_cir <= 20) {
    warning("Please enter reasonable waist circumference and hip circumference values.")
  } else {
    wthipr <- waist_cir / hip_cir
    return (round(wthipr, 2))
  }
}