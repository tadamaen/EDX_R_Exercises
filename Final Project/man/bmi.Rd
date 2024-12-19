\name{bmi}
\alias{bmi}
\title{Calculating BMI Of User}
\description{Calculates the BMI using height of the user in metres and the weight of the user
in kilograms}
\usage{
calculate_bmi(weight_kg, height_m)
}
\arguments{
  \item{weight_kg}{\code{numeric}. The weight of the user in kilograms. This must be a positive number.}
  \item{height_m}{\code{numeric}. The height of the user in meters. This must be a positive number.}
}
\value{
  Any positive number value can be the output, depending on your weight and height values.
}
\examples{
calculate_bmi(60, 1.6)
calculate_bmi(70.5, 1.67)
}