\name{AAZ19}
\alias{AAZ19}
\title{ This function queries the user for the specs and recalls MIL-STD-414 variable sampling plans from the published tables.
}
\description{
This function recalls Normal, Tightened and Reduced Plans including the sample size n, acceptability constant (k), and the maximum proportion nonconforming allowable M.
}
\usage{
AAZ19(type,stype,dINSL,dLOTS,dAQL)
}
\value{
returns a vector of length 3 containing the sample size (n), acceptability constant (k), and the maximum proportion nonconforming allowable (M)).
}
\arguments{
  \item{type}{type is the plan type 'Normal', 'Tightened', or 'Reduced', Normal is Default.}
  \item{stype}{stype is "known" or "unknown", unknown is Default}
  \item{dINSL}{dINSL is 1-5}
  \item{dLOTS}{dLOTS is 1-16}
  \item{dAQL}{dAQL is 1-11}
}
\references{
<https://archive.org/details/MIL-STD-414>
}
\author{ John S. Lawson \email{lawson@byu.edu}}

\keyword{file}
