% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classes.R
\docType{class}
\name{FourC}
\alias{FourC}
\alias{FourC-class}
\alias{updateObject,FourC-method}
\title{FourC-class}
\usage{
\S4method{updateObject}{FourC}(object, ..., verbose = FALSE)

FourC(colData, metadata)
}
\arguments{
\item{object}{Object of class \code{FourC}}

\item{\dots}{Additional arguments}

\item{verbose}{Logical indicating volumn of information shown}

\item{colData}{Column data that contains the required information for each library to set up
the \code{FourC} object:
\enumerate{
\item viewpoint, name of the viewpoint 
\item condition, experimental condition
\item replicate, replicate number
\item bamFile, file name of the bam file
\item sequencingPrimer, was the 4C library sequenced from the side of the first restriction enzyme cutting site or second
}}

\item{metadata}{Experimental data information required for the \code{FourC} object: 
\enumerate{
\item projectPath, directory where the project will be saved
\item fragmentDir, directory in the project directory where the information
about restriction fragments will be saved
\item referenceGenomeFile, path to the reference genome or a \code{BSgenome} object.
\item reSequence1, restriction enzyme recognition pattern of the first 
restriction enzyme
\item reSequence2, restriction enzyme recognition pattern of the second 
restriction enzyme
\item primerFile, path to the file containing the primer sequences used for
preparing the 4C libraries
\item bamFilePath, path to the directory where the bam files are stored
}}
}
\description{
FourC-class
}
\note{
The \code{FourC} object extends the \code{DESeqDataSet} class.
}
\examples{


metadata <- list(projectPath=tempdir(),
                 fragmentDir="re_fragments",
                 referenceGenomeFile=system.file("extdata/dm3_2L_1-6900.fa", 
                                                 package="FourCSeq"),
                 reSequence1="GATC",
                 reSequence2="CATG",
                 primerFile=system.file("extdata/primer.fa", 
                                        package="FourCSeq"),
                 bamFilePath=system.file("extdata/bam", package="FourCSeq"))

colData <- DataFrame(viewpoint = "testdata", 
                     condition = factor(rep(c("WE_68h", "MESO_68h", "WE_34h"),                    
                                            each=2),
                                        levels = c("WE_68h", "MESO_68h", "WE_34h")),
                     replicate = rep(c(1, 2), 
                                     3),
                     bamFile = c("CRM_ap_ApME680_WE_6-8h_1_testdata.bam", 
                                 "CRM_ap_ApME680_WE_6-8h_2_testdata.bam",       
                                 "CRM_ap_ApME680_MESO_6-8h_1_testdata.bam", 
                                 "CRM_ap_ApME680_MESO_6-8h_2_testdata.bam", 
                                 "CRM_ap_ApME680_WE_3-4h_1_testdata.bam",
                                 "CRM_ap_ApME680_WE_3-4h_2_testdata.bam"),
                     sequencingPrimer="first")

fc <- FourC(colData, metadata)
fc
 
}
\keyword{package}
