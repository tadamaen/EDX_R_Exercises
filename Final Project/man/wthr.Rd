\name{wthr}
\alias{wthr}
\title{Calculating Waist Circumference To Height Ratio Of User}
\description{Calculates the ratio of a user's Waist Circumference in centimeters
to the height of the user, in centimeters}
\usage{
calculate_wthr(waist_cir, height_cm)
}
\arguments{
  \item{waist_cir}{\code{numeric}. The waist circumference of the user in centimeters. This must be a positive number.}
  \item{height_cm}{\code{numeric}. The height of the user in centimeters. This must be a positive number.}
}
\value{
  A positive numeric value representing the waist-to-height ratio.
}
\examples{
calculate_wthr(60, 160)
calculate_wthr(60.5, 190)
}
