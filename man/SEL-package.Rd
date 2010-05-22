\name{SEL-package}
\alias{SEL-package}
\docType{package}
\title{
Semiparametric Elicitation of a bounded parameter.
}
\description{
This package implements a novel method for fitting a bounded probability
distribution to quantiles stated for example by an expert (see Bornkamp
and Ickstadt (2009)).  For this purpose B-splines are used, and the
density is obtained by penalized least squares based on a Brier entropy
penalty.  The package provides methods for fitting the distribution as
well as methods for evaluating the underlying density and cdf. In
addition methods for plotting the distribution, drawing random numbers
and calculating quantiles of the obtained distribution are provided.
}
\details{
\tabular{ll}{
Package: \tab SEL\cr
Type: \tab Package\cr
Version: \tab 1.0-2\cr
Date: \tab 2010-05-21\cr
License: \tab GPL\cr
}
}
\author{
Bjoern Bornkamp

Maintainer: Bjoern Bornkamp <bornkamp@statistik.tu-dortmund.de>
}
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician},
   \bold{63}, 373--377

   O'Hagan A., Buck C. E., Daneshkhah, A., Eiser, R., Garthwaite,
   P., Jenkinson, D., Oakley, J. and Rakow, T. (2006), \emph{Uncertain
     Judgements: Eliciting Expert Probabilities}, John Wiley and Sons Inc.

   Garthwaite, P., Kadane, J. O'Hagan, A. (2005), Statistical
   Methods for Eliciting Probability Distributions,
   \emph{Journal of the American Statistical Association},
   \bold{100}, 680--701

   Dierckx, P. (1993), \emph{Curve and Surface
   Fitting with Splines}, Clarendon Press.
}

\keyword{ package }

\examples{
## example from O'Hagan et al. (2006)
x <- c(177.5, 183.75, 190, 205, 220)
y <- c(0.175, 0.33, 0.5, 0.75, 0.95)

default   <- SEL(x, y, Delta = 0.05, bounds = c(165, 250))
bernst    <- SEL(x, y, d = 10, N = 0, Delta = 0.05, bounds = c(165, 250))
unifknots <- SEL(x, y, d = 3, N = 5, Delta = 0.05, bounds = c(165, 250))
lin       <- SEL(x, y, d = 1, inknts = x, Delta = 0.05, bounds = c(165, 250))
comparePlot(default, bernst, unifknots, lin, type = "cdf")
comparePlot(default, bernst, unifknots, lin, type = "density")

## compare summaries
summary(default)
summary(bernst)
summary(unifknots)
summary(lin)

## sample from SEL object and evaluate density
xxx <- rvSEL(50000, bernst)
hist(xxx, breaks=100, freq=FALSE)
curve(predict(bernst, newdata=x), add=TRUE)


}
