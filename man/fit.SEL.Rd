\name{fit.SEL}
\alias{fit.SEL}
\title{ Fit an SEL object }
\description{
  Function that performs the actual fitting of the expert's distribution
  via quadratic programming (using the \code{\link[quadprog]{solve.QP}} function
  from the \code{quadprog} package). This function is mainly for
  internal use.
}
\usage{
fit.SEL(N, alpha, P, A, b, gamma, dplus = 0)
}
\arguments{
  \item{N}{ Matrix containing the B-spline basis functions evaluated at
 the elicited quantiles. }
  \item{alpha}{ Vector giving the levels of the elicited quantiles. }
  \item{P}{ Penalty matrix (called Omega in the reference below). }
  \item{A,b}{ Matrix and vector containing the specifying the constraints A'b >= 0. }
  \item{gamma}{ Gamma parameter trading of goodness of fit and
    Brier entropy/Brier divergence. }
  \item{dplus}{ Additional offset for dvec in \code{solve.QP}. }
}
\value{
  Returns solution of the quadratic programming problem.
}
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician},
   \bold{63}, 373--377

   Goldfarb, D., and Idnani, A. (1982), Dual
   and Primal-Dual Methods for Solving Strictly Convex Quadratic
   Programs, in \emph{ Numerical Analysis}, (eds.) J. Hennart,
   Springer Verlag, Berlin, pp. 226--239.

   Goldfarb, D., and Idnani, A. (1983), A
  Numerically Stable Dual Method for Solving Strictly Convex Quadratic
  Programs'', \emph{Mathematical Programming}, 27, 1--33.
}
\author{ Bjoern Bornkamp }
\seealso{ \code{\link{SEL}}, \code{\link[quadprog]{solve.QP}} }
\keyword{ misc }
