% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{realizedLibrary}
\alias{realizedLibrary}
\title{The realized library from the Oxford-Man Institute of Quantitative Finance}
\format{
data.frame
}
\usage{
realizedLibrary
}
\description{
A data.frame object containing the daily open-close returns, daily realized variances based on 
five-minute intraday returns and daily realized kernels ranging from 2000-01-03 up to 2019-06-10 for the S&P 500. 
Use \code{colnames(realizedLibrary)} to see which realized measures. 
The full library of the Oxford-Man Institute of Quantitative Finance can be found on their website: \url{https://realized.oxford-man.ox.ac.uk/}.
}
\references{
Gerd Heber, Asger Lunde, Neil Shephard, and Kevin Sheppard (2009)
"Oxford-Man Institute's realized library, version 0.3", Oxford-Man
Institute, University of Oxford.
}
\keyword{datasets}
