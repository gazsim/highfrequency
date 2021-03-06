% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/realized_measures.R
\name{rCov}
\alias{rCov}
\title{Realized Covariance}
\usage{
rCov(
  rData,
  cor = FALSE,
  alignBy = NULL,
  alignPeriod = NULL,
  makeReturns = FALSE
)
}
\arguments{
\item{rData}{a \eqn{(M x N)} matrix/zoo/xts object containing the \eqn{N}
return series over period \eqn{t}, with \eqn{M} observations during \eqn{t}.
In case of a matrix, no multi-day adjustment is possible.}

\item{cor}{boolean, in case it is TRUE, the correlation is returned. FALSE by default.}

\item{alignBy}{a string, align the tick data to "seconds"|"minutes"|"hours".}

\item{alignPeriod}{an integer, align the tick data to this many [seconds|minutes|hours].}

\item{makeReturns}{boolean, should be TRUE when rData contains prices instead of returns. FALSE by default.}
}
\value{
an \eqn{N x N} matrix
}
\description{
Function returns the Realized Covariation (rCov).
Let \eqn{r_{t,i}} be an intraday \eqn{N x 1} return vector and \eqn{i=1,...,M}
the number of intraday returns.

Then, the rCov is given by
\deqn{
 \mbox{rCov}_{t}=\sum_{i=1}^{M}r_{t,i}r'_{t,i}.
 }
}
\examples{
# Realized Variance/Covariance for prices aligned   
# at 5 minutes.
data(sampleTData)
data(sample5MinPricesJumps)

# Univariate: 
rv = rCov(rData = sampleTData$PRICE, alignBy = "minutes", 
                   alignPeriod = 5, makeReturns = TRUE)
rv 

# Multivariate: 
rc = rCov(rData = sample5MinPricesJumps['2010-01-04'], makeReturns=TRUE)
rc
}
\author{
Jonathan Cornelissen and Kris Boudt
}
\keyword{volatility}
