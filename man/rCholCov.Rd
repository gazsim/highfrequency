% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/realized_measures.R
\name{rCholCov}
\alias{rCholCov}
\title{rCholCov positive semi-definite covariance estimation using the CholCov algorithm}
\usage{
rCholCov(
  pData,
  IVest = "MRC",
  COVest = "MRC",
  criterion = "squared duration",
  ...
)
}
\arguments{
\item{pData}{a list. Each list-item i contains an xts object with the intraday price data 
of stock i for day t. The order of the data does not matter as it will be sorted according to the criterion specified in the \code{criterion} argument}

\item{IVest}{integrated variance estimator, default is \code{"MRC"}. For a list of implemented estimators, use listCholCovEstimators().}

\item{COVest}{covariance estimator, default is \code{"MRC"}. For a list of implemented estimators, use listCholCovEstimators().}

\item{criterion}{criterion to use for sorting the data according to liquidity. Possible values are ["squared duration"|"duration"|"count"], defaults to \code{"squared duration"}.}

\item{...}{additional arguments to pass to IVest and COVest. See details.}
}
\value{
a list containing the covariance matrix "CholCov", and the Cholesky decomposition "L" and "G" such that L * G * L' = CholCov
}
\description{
Function that estimates the integrated covariance matrix using the CholCov algorithm. 
The algorithm estimates the integrated covariance matrix by sequentially adding series and using `refreshTime` to synchronize the observations. 
This is done in order of liquidity, which means that the algorithm uses more data points than most other estimation techniques.
}
\details{
additional arguments for IVest and COVest should be passed in the ... argument. For the MRC estimator, which is the default, the theta and delta parameters can be set. These default to 1 and 0.1 respectively.
}
\references{
Boudt, Laurent, Lunde, Quaedvlieg, Sauri(2017) Positive semidefinite integrated covariance estimation, factorizations and asynchronicity. Journal of Econometrics 196, 347-367
}
\author{
Emil Sjoerup
}
