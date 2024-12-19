\name{obesitychances}
\alias{obesitychances}
\title{Chances Of Obesity Of A User}
\description{Calculates the chances (0 percent, 33 percent, 67 percent, 100 percent)
of a user getting obese based on three calculated values - BMI, Waist to Height ratio and
Waist to Hip ratio}
\usage{
obesitychances(height_m, weight_kg, waist_cir, hip_cir)
}
\arguments{
  \item{height_m}{\code{numeric}. The height of the user in meters. Must be a positive number.}
  \item{weight_kg}{\code{numeric}. The weight of the user in kilograms. Must be a positive number.}
  \item{waist_cir}{\code{numeric}. The waist circumference of the user in centimeters. Must be a positive number.}
  \item{hip_cir}{\code{numeric}. The hip circumference of the user in centimeters. Must be a positive number.}
}
\value{
  A percentage output of either 0, 33, 67 or 100 percent to determine your odds of getting obese
  in future based on your height, weight, waist circumference and hip circumference inputs.
}
\examples{
obesitychances(1.7, 70, 60, 65)
obesitychances(1.9, 75, 70, 68)
}
