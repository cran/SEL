\name{quantSEL}
\alias{quantSEL}
\title{ Calculate quantiles of an SEL object. }
\description{
  Returns the quantiles of the fitted distribution.
}
\usage{
quantSEL(q, object, nPoints = 1000)
}
\arguments{
  \item{q}{ A vector of quantiles. }
  \item{object}{ An SEL object. }
  \item{nPoints}{ Number of evaluations for the brute
                force inversion of the expert cdf (see details). }
}
\value{
  A vector of quantiles.
}
\details{
  The inverse of the distribution function is formed by evaluating
  the distribution function at nPoints points and interchanging the
  role of dependent and independent variable when building a function
  interpolating the data (using \code{splinefun} with \code{"monoH.FC"}
  option). Note that there are also direct ways of inverting a B-spline
  function, which however turned out to be less efficient for our purposes.
}
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician}, \bold{63}, 373--377
}
\author{ Bjoern Bornkamp }
\seealso{ \code{\link{SEL}}, \code{\link{splinefun}} }
\examples{
## example from O'Hagan et al. (2006)
x <- c(177.5, 183.75, 190, 205, 220)
y <- c(0.175, 0.33, 0.5, 0.75, 0.95)

default   <- SEL(x, y, Delta = 0.05, bounds = c(165, 250))
bernst    <- SEL(x, y, d = 10, N = 0, Delta = 0.05, bounds = c(165, 250))
unifknots <- SEL(x, y, d = 3, N = 5, Delta = 0.05, bounds = c(165, 250))
lin       <- SEL(x, y, d = 1, inknts = x, Delta = 0.05, bounds = c(165,250))
quantSEL(c(0.25, 0.5, 0.75), default)
quantSEL(c(0.25, 0.5, 0.75), bernst)
quantSEL(c(0.25, 0.5, 0.75), unifknots)
quantSEL(c(0.25, 0.5, 0.75), lin)
}
\keyword{ misc }
