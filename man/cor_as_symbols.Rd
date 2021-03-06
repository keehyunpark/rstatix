% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cor_as_symbols.R
\name{cor_as_symbols}
\alias{cor_as_symbols}
\title{Replace Correlation Coefficients by Symbols}
\usage{
cor_as_symbols(
  x,
  cutpoints = c(0, 0.25, 0.5, 0.75, 1),
  symbols = c(" ", ".", "+", "*")
)
}
\arguments{
\item{x}{a correlation matrix. Particularly, an object of class \code{cor_mat}.}

\item{cutpoints}{numeric vector used for intervals. Default values are
\code{c(0, 0.25, 0.5, 0.75, 1)}.}

\item{symbols}{character vector, one shorter than cutpoints, used as
correlation coefficient symbols. Default values are \code{c(" ", ".",  "+",
"*")}.}
}
\description{
Take a correlation matrix and replace the correlation coefficients by symbols according to the
  level of the correlation.
}
\examples{
# Compute correlation matrix
#::::::::::::::::::::::::::::::::::::::::::
cor.mat <- mtcars \%>\%
  select(mpg, disp, hp, drat, wt, qsec) \%>\%
  cor_mat()

# Replace correlation coefficient by symbols
#::::::::::::::::::::::::::::::::::::::::::
cor.mat \%>\%
  cor_as_symbols() \%>\%
  pull_lower_triangle()

}
\seealso{
\code{\link{cor_mat}()}
}
