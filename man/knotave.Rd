\name{knotave}
\alias{knotave}
\title{ Calculate the knot averages of a B-spline basis. }
\description{
  Calculates the knot averages of a B-spline basis.
}
\usage{
  knotave(knots, d)
}
\arguments{
  \item{knots}{ Knot Vector (with d+1 coincident knots on the boundaries). }
  \item{d}{ Degree of the B-spline basis. }
}
\value{
  Numeric containing knot averages
}
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician},
   \emph{to appear}

   Dierckx, P. (1993), \emph{Curve and Surface
   Fitting with Splines}, Clarendon Press
}
\author{ Bjoern Bornkamp }
\seealso{ \code{\link{SEL}}}
\examples{
## Example for calculation of a control polygon
knts <- c(rep(0, 4), rep(1, 4))
cf <- c(-1, -1, 1/2, 0)
sq <- seq(0, 1, length = 101)
N <- splineDesign(sq, knots = knts, ord = 4)
res <- colSums(t(N)*cf)
plot(sq, res, type = "l", ylim = c(-1, 0.6))
kntAv <- knotave(knts, 3)
lines(kntAv, cf, col = "red") # add control polygon
}
