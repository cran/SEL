\name{rvSEL}
\alias{rvSEL}
\title{ Simulate from the expert's distribution }
\description{
  Simulate random variables from an SEL object.
}
\usage{
rvSEL(n, object, nPoints = 1000)
}
\arguments{
  \item{n}{ Number of simulated values. }
  \item{object}{ An SEL object. }
  \item{nPoints}{ Number of evaluations for the brute
                force inversion of the expert cdf. }
}
\value{
  A numeric vector containing pseudo-random variates from the
  expert's density. 
}
\details{
  The inverse of the distribution function is formed by evaluating
  the distribution function at nPoints points and interchanging the
  role of dependent and independent variable when building an function
  interpolating the data (using \code{splinefun} with \code{"monoH.FC"}
  option). Note that there are also direct ways of inverting a B-spline
  function, which however turned out to be less efficient for our purposes.
}
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician}, \bold{63}, 373--377
}
\author{ Bjoern Bornkamp }
\seealso{ \code{\link{SEL}}, \code{\link{splinefun}}  }
\examples{
## bimodal example 
x2 <- c(0.1, 0.2, 0.5, 0.8, 0.9)
y2 <- c(0.2, 0.4, 0.45, 0.85, 0.99)

fit1 <- SEL(x2, y2, Delta=0.05, d = 4, inknts = x2)
fit2 <- SEL(x2, y2, Delta=0.05, d = 15, N = 0)
comparePlot(fit1, fit2, superpose = TRUE)

## sample from SEL object
xxx <- rvSEL(50000, fit1)
hist(xxx, breaks=100, freq=FALSE)
curve(predict(fit1, newdata=x), add=TRUE)
}
\keyword{ misc }
