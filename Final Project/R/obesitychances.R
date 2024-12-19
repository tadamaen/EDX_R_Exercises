# Functions from the other three R files

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

# Function to determine obesity status
obesitychances <- function(height_m, weight_kg, waist_cir, hip_cir) {
    height_cm <- height_m * 100
    bmi_value <- calculate_bmi(weight_kg, height_m)
    wthr_value <- calculate_wthr(waist_cir, height_cm)
    wthipr_value <- calculate_wthipr(waist_cir, hip_cir)
    if ((bmi_value < 25) & (wthr_value < 0.5) & (wthipr_value < 0.9)) {
        return("Your chances of being overweight is 0%")
    } else if ((bmi_value > 25) & (wthr_value < 0.5) & (wthipr_value < 0.9)) {
        return("Your chances of being overweight is 33%")
    } else if ((bmi_value < 25) & (wthr_value > 0.5) & (wthipr_value < 0.9)) {
        return("Your chances of being overweight is 33%")
    } else if ((bmi_value < 25) & (wthr_value < 0.5) & (wthipr_value > 0.9)) {
        return("Your chances of being overweight is 33%")
    } else if ((bmi_value > 25) & (wthr_value > 0.5) & (wthipr_value < 0.9)) {
        return("Your chances of being overweight is 67%")
    } else if ((bmi_value > 25) & (wthr_value < 0.5) & (wthipr_value > 0.9)) {
        return("Your chances of being overweight is 33%")
    } else if ((bmi_value < 25) & (wthr_value > 0.5) & (wthipr_value > 0.9)) {
        return("Your chances of being overweight is 33%")
    } else {
        return("Your chances of being overweight is 100%")
    }
}