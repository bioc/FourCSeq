% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{writeTrackFiles}
\alias{writeTrackFiles}
\title{Write track files of an selected \code{assay}}
\usage{
writeTrackFiles(
  object,
  assay = "counts",
  folder = "tracks",
  format = "bw",
  removeZeros = TRUE
)
}
\arguments{
\item{object}{A \code{FourC} object.}

\item{assay}{Character vector selecting the assay of the \code{FourC} object
that should be saved as track file.}

\item{folder}{Path relative to the project folder, where the results are track files should be saved.}

\item{format}{Character vector specifying the format of the output.
Can either be 'bedGraph' or 'bw'. 'bw' is the default.}

\item{removeZeros}{Define whether fragments with zero counts should be included with
value 0 or not. On default zeros are removed.}
}
\value{
Message whether the track export of assay was successful.
}
\description{
The files are saved in the specified folder. The filenames are the 
combination of the assay name, the selected column name and the corresponding
file extension.
}
\details{
\code{writeTrackFiles}
}
\examples{
 



                       
data(fc, package="FourCSeq")
metadata(fc)$projectPath = tempdir()

fc <- combineFragEnds(fc)
fc

writeTrackFiles(fc)

}
\author{
Felix A. Klein, \email{felix.klein@embl.de}
}
