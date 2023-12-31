% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotResults.R
\name{plotFits}
\alias{plotFits}
\title{Plot fit results.}
\usage{
plotFits(object, viewpoint = NULL, main = NULL)
}
\arguments{
\item{object}{A \code{FourC} object, after successfully calling \code{getZScores}.}

\item{viewpoint}{A character vector of the viewpoint for which the plots are generated. 
If set to \code{NULL} the first viewpoint in the \code{FourC} object is used.}

\item{main}{Main text for the plots. If set to \code{NULL} the column names are printed.}
}
\description{
\code{plotFits} generates plots of the fits used to calculate the z-scores.
}
\details{
Plots are generated to visualize the results of the fits used to calculate the z-scores.
}
\examples{

                       
data(fcf, package="FourCSeq")

plotFits(fcf)
 
}
\seealso{
\code{\link{FourC}}, \code{\link{getZScores}},
\code{\link{distFitMonotone}}, \code{\link{distFitMonotoneSymmetric}}
}
\author{
Felix A. Klein, \email{felix.klein@embl.de}
}
