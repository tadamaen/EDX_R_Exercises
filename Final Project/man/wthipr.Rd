\name{wthipr}
\alias{wthipr}
\title{Calculating Waist Circumference to Hip Circumference Ratio of User}
\description{Calculates the ratio of a user's Waist Circumference in centimeters
to the Hip Circumference in centimeters. This is known as the Waist to Hip Ratio (WHR).}
\usage{
calculate_wthipr(waist_cir, hip_cir)
}
\arguments{
  \item{waist_cir}{\code{numeric}.
  The waist circumference of the user in centimeters. This must be a positive number.}
  \item{hip_cir}{\code{numeric}. The hip circumference of the user in centimeters.
  This must be a positive number.}
}
\value{
  A positive numeric value representing the waist-to-hip ratio.
}
\examples{
calculate_wthipr(60, 75)
calculate_wthipr(70.2, 85.4)
}
