% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/realized_measures.R
\name{rTPVar}
\alias{rTPVar}
\title{Realized tri-power variation estimator of quarticity for a highfrequency return series.}
\usage{
rTPVar(rData, alignBy = NULL, alignPeriod = NULL, makeReturns = FALSE)
}
\arguments{
\item{rData}{a zoo/xts object containing all returns in period t for one asset.}

\item{alignBy}{a string, align the tick data to "seconds"|"minutes"|"hours".}

\item{alignPeriod}{an integer, align the tick data to this many [seconds|minutes|hours].}

\item{makeReturns}{boolean, should be TRUE when rData contains prices instead of returns. FALSE by   default.}
}
\value{
numeric
}
\description{
Function returns the rTPVar, defined in Andersen et al. (2012).
 
 Assume there is \eqn{N} equispaced returns in period \eqn{t}. Let \eqn{r_{t,i}} be a return (with \eqn{i=1, \ldots,N}) in period \eqn{t}.
 
 Then, the rTPVar is given by
 \deqn{
   \mbox{rTPVar}_{t}=N\frac{N}{N-2} \left(\frac{\Gamma \left(0.5\right)}{ 2^{2/3}\Gamma \left(7/6\right)} \right)^{3} \sum_{i=3}^{N} \mbox({|r_{t,i}|}^{4/3} {|r_{t,i-1}|}^{4/3} {|r_{t,i-2}|}^{4/3})
 }
}
\examples{
data(sampleTData)
rTPVar(rData = sampleTData$PRICE, alignBy = "minutes", alignPeriod = 5, makeReturns = TRUE)
rTPVar

}
\references{
Andersen, T. G., D. Dobrev, and E. Schaumburg (2012). Jump-robust volatility estimation using nearest neighbor truncation. Journal of Econometrics, 169(1), 75- 93.
}
\author{
Giang Nguyen, Jonathan Cornelissen and Kris Boudt
}
\keyword{highfrequency}
\keyword{rTPVar}
