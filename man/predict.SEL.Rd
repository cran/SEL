\name{predict.SEL}
\alias{predict.SEL}
\title{ Evaluate the expert's density (or cdf) }
\description{
  Evaluate the density or cdf of an SEL object.
}
\usage{
\method{predict}{SEL}(object, newdata = seq(object$bounds[1],
      object$bounds[2], length = 101), type = c("density", "cdf"), deriv, ...)
}
\arguments{
  \item{object}{ An SEL object. }
  \item{newdata}{ Where to evaluate the distribution. }
  \item{type}{ Determines whether to evaluate the expert's density or cdf
      (only if \code{deriv} is missing). }
  \item{deriv}{ Determines which derivative of the expert's
    distribution should be evaluated. }
  \item{...}{...}
}
\value{
  A numeric vector
}
\author{ Bjoern Bornkamp }
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician}, \emph{to appear}
}
\seealso{ \code{\link{SEL}} }
\examples{
# example from O'Hagan et al. (2006)
x <- c(177.5, 183.75, 190, 205, 220)
y <- c(0.175, 0.33, 0.5, 0.75, 0.95)

default   <- SEL(x, y, Delta = 0.05, bounds = c(165, 250))
predict(default, newdata = c(200, 205))
}
\keyword{ misc }
