% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssd.R
\name{print.ssdRS}
\alias{print.ssdRS}
\title{Print method for class \code{"ssdRS"}}
\usage{
\method{print}{ssdRS}(x, ...)
}
\arguments{
\item{x}{Object of class \code{"ssdRS"}}

\item{...}{Other arguments (for consistency with the generic)}
}
\value{
Prints text summary in the console and invisibly returns the
    \code{"ssdRS"} object
}
\description{
Print method for class \code{"ssdRS"}
}
\examples{
## specify design prior
to1 <- 2
so1 <- 1
dprior <- designPrior(to = to1, so = so1)

## compute required standard error for significance at one-sided 2.5\%
sregionfunSig <- function(sr, alpha = 0.025) {
    successRegion(intervals = cbind(stats::qnorm(p = 1- alpha)*sr, Inf))
}
ssd1 <- ssd(sregionfun = sregionfunSig, dprior = dprior, power = 0.8)
print(ssd1)
}
\author{
Samuel Pawel
}
