\name{plot.SEL}
\alias{plot.SEL}
\title{ Plotting an SEL object }
\description{
  This function displays a fitted SEL object and displays the
  expert's cdf or pdf (depending on the \code{deriv} argument)
}
\usage{
\method{plot}{SEL}(x, ..., type = c("density", "cdf"), deriv,
      points = TRUE, n = 101, xlab="", ylab="", ylim)
}
\arguments{
  \item{x}{ An SEL object. }
  \item{...}{ Additional arguments to plot function. }
  \item{type}{ Determines whether to plot the expert's density or cdf
      (only if \code{deriv} is missing). }
  \item{deriv}{ Determines which derivative of the expert's
    distribution should be plotted. If specified
    the \code{type} argument is ignored. }
  \item{points}{ Logical indicating whether elicited quantiles
                 should be displayed, when displaying the cdf. }
  \item{n}{ Integer, number of points used for plotting. }
  \item{xlab, ylab}{ Label of x-axis and y-axis. }
  \item{ylim}{ Limits of y axis. }
}
\references{ 
   Bornkamp, B. and Ickstadt, K. (2009). A Note on B-Splines for
   Semiparametric Elicitation. \emph{The American Statistician}, \emph{to appear}
}
\author{ Bjoern Bornkamp }
\seealso{ \code{\link{comparePlot}}, \code{\link{SEL}} }
\examples{
# example from O'Hagan et al. (2006)
x <- c(177.5, 183.75, 190, 205, 220)
y <- c(0.175, 0.33, 0.5, 0.75, 0.95)

fit <- SEL(x, y, Delta = 0.05, bounds = c(165, 250))
plot(fit)
plot(fit, type = "cdf")
plot(fit, deriv = 1)
}
\keyword{ misc }
