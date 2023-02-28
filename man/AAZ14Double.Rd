\name{AAZ14Double}
\alias{AAZ14Double}
\title{ This function queries the user for the specs and recalls MIL-STD-105E - ANSI/ASQ Z1.4 Double Sampling Plans from the published tables.
}
\description{
This function is called by the function AADouble function.
}
\usage{
AAZ14Double(PLAN, dINSL, dLOTS, dAQL)
}
\value{
returns a data frame with two rows and three columns
}
\arguments{
  \item{PLAN}{ PLAN is the plan type 1=normal, 2=Tightened, 3=reduced.}
  \item{dINSL}{ INSL is the inspection level, 1-7.}
  \item{dLOTS}{ LOTS is the lot size, 1-15.}
  \item{dAQL}{ AQL is the Acceptance Quality Level, 1-26.}
}
\note{ This function is called by the function AADouble.}
\author{ John S. Lawson \email{lawson@byu.edu}}

\keyword{file}
