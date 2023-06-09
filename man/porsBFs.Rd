% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssdBFs.R
\name{porsBFs}
\alias{porsBFs}
\title{Probability of replication success based on the sceptical Bayes factor}
\usage{
porsBFs(level, dprior, sr, paradox = TRUE)
}
\arguments{
\item{level}{Threshold for the sceptical Bayes factor below which replication
success is achieved}

\item{dprior}{Design prior object}

\item{sr}{Replication standard error}

\item{paradox}{Should the probability of replication success be computed
allowing for the replication paradox (replication success when the effect
estimates from original and replication study have a different sign)?
Defaults to \code{TRUE}}
}
\value{
The probability to achieve replication success
}
\description{
This function computes the probability to achieve replication
    success based on the sceptical Bayes factor. The sceptical Bayes factor
    is assumed to be oriented so that values below one indicate replication
    success.
}
\examples{
## specify design prior
to1 <- 0.2
so1 <- 0.05
dprior <- designPrior(to = to1, so = so1)
porsBFs(level = 1/3, dprior = dprior, sr = 0.05)

}
\references{
Pawel, S., Consonni, G., and Held, L. (2022). Bayesian approaches to
designing replication studies. arXiv preprint.
\doi{10.48550/arXiv.2211.02552}

Pawel, S. and Held, L. (2020). The sceptical Bayes factor for the assessement
of replication success. Journal of the Royal Statistical Society: Series B
(Statistical Methodology), 84(3), 879-911. \doi{10.1111/rssb.12491}
}
\author{
Samuel Pawel
}
