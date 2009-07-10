\name{SEL-package}
\alias{SEL-package}
\docType{package}
\title{
Semiparametric Elicitation of a bounded parameter.
}
\description{
This package implements a novel method for transferring expert
statements about an uncertain bounded quantity into a probability
distribution (see Bornkamp and Ickstadt (2009) for a detailed
description). This is a challenging problem, as these statements are
sparse and imprecise. We approach both issues by penalization, such that
the final distribution will contain the stated information, but subject
to that distributes its probability mass as uniformly as possible. As a
functional basis for the modelled distribution we use linear
combinations of B-splines. B-splines are highly flexible, have excellent
shape-preserving properties and are also well suited for evaluation,
differentiation and integration.

The package provides methods for fitting the expert's distribution as
well as methods for evaluating density and probability distribution
function of the underlying distribution as well as methods for drawing
random numbers from the distribution and calculating quantiles of the
expert's density.
}
\details{
\tabular{ll}{
Package: \tab SEL\cr
Type: \tab Package\cr
Version: \tab 1.0-1\cr
Date: \tab 2009-07-10\cr
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
   \emph{to appear}

   O'Hagan A., Buck C. E., Daneshkhah, A., Eiser, R., Garthwaite,
   P., Jenkinson, D., Oakley, J. and Rakow, T. (2006), \emph{Uncertain
     Judgements: Eliciting Expert Probabilities}, John Wiley and Sons Inc.

   Garthwaite, P., Kadane, J. O'Hagan, A. (2005), Statistical
   Methods for Eliciting Probability Distributions,
   \emph{Journal of the American Statistical Association},
   \bold{100}, 680--701.

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
