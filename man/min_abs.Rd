\name{min_abs}
\alias{min_abs}
\title{ Find gamma given Delta }
\description{
  Find gamma so that squareroot of average squared distance of fitted
  distribution and statements is equal to \code{Delta} (using the
  \code{uniroot} function). This function is
  not meant to be called by the user, unless one is familiar with the
  source code.
}
\usage{
  min_abs(Delta, N, alpha, P, A, b, lb, ub, dplus = 0)
}
\arguments{
  \item{Delta}{ Average root of squared error to be achieved with fitted distribution. }
  \item{N}{ Matrix containing the B-spline basis functions evaluated at
 the elicited quantiles. }
  \item{alpha}{ Vector giving the levels of the elicited quantiles. }
  \item{P}{ Penalty matrix (called Omega in reference below). }
  \item{A,b}{ Matrix and vector containing the specifying the constraints A'b >= 0. }
  \item{lb, ub}{ lower and upper bound to search for gamma. }
  \item{dplus}{offset integral needed when divergence instead of entropy
   is used.}
}
\value{
  Returns gamma
}
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician}, \bold{63}, 373--377
 }
\seealso{ \code{\link{uniroot}}, \code{\link[quadprog]{solve.QP}} }
\author{ Bjoern Bornkamp }
\keyword{ misc }
