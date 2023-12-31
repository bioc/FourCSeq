% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reference_fragments.R
\name{getReferenceSeq}
\alias{getReferenceSeq}
\title{Function to read reference sequences}
\usage{
getReferenceSeq(object)
}
\arguments{
\item{object}{A \code{FourC} object.}
}
\value{
A \code{DNAStringSet} object containing the sequences of the
reference genome from the \code{FaFile} or \code{BSgenome} object.
}
\description{
This functions allows to retrieve the reference sequence.
}
\examples{



metadata <- list(projectPath=tempdir(),
                 fragmentDir="re_fragments",
                 referenceGenomeFile=system.file("extdata/dm3_chr2L_1-6900.fa", 
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

refSeq <- getReferenceSeq(fc)


}
\author{
Felix A. Klein
}
