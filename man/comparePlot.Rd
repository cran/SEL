\name{comparePlot}
\alias{comparePlot}
\title{ Compare different elicitated densities. }
\description{
  Compare different elicitated distributions in a trellis display.
}
\usage{
comparePlot(..., type = c("density", "cdf"), deriv,
            points = TRUE, superpose = FALSE, n = 101,
            xlab= "", ylab, addArgs = NULL)
}
\arguments{
  \item{\dots}{ Fitted SEL objects separated by a comma. }
  \item{type}{ Determines whether to plot densities or cdfs (ignored if \code{deriv}
    is not missing). }
  \item{deriv}{ Specify derivative of the expert's density to be
    plotted. }
  \item{points}{ Logical indicating whether elicited quantiles
                 should be displayed, when displaying the cdf. }
  \item{superpose}{ Logical indicate if plots should be superposed. }
  \item{n}{ Integer, number of points used for plotting. }
  \item{xlab, ylab}{ Labels for x-axis and y-axis. If \code{ylab}
    is missing the value of \code{type} is used. }
  \item{addArgs}{List specifying additional arguments for
    \code{xyplot} function, list elements should match the
    corresponding arguments of the \code{xyplot} function.}
}
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician}, \emph{to appear}
}
\author{ Bjoern Bornkamp }
\seealso{ \code{\link{SEL}}, \code{\link{plot.SEL}}}
\examples{
# example from O'Hagan et al. (2006)
x <- c(177.5, 183.75, 190, 205, 220)
y <- c(0.175, 0.33, 0.5, 0.75, 0.95)

default   <- SEL(x, y, Delta = 0.05, bounds = c(165, 250))
bernst    <- SEL(x, y, d = 10, N = 0, Delta = 0.05, bounds = c(165, 250))
unifknots <- SEL(x, y, d = 3, N = 5, Delta = 0.05, bounds = c(165, 250))
lin       <- SEL(x, y, d = 1, inknts = x, Delta = 0.05, bounds = c(165, 250))
comparePlot(default, bernst, unifknots, lin, type = "cdf")
comparePlot(default, bernst, unifknots, lin, type = "density")
}
\keyword{ misc }
