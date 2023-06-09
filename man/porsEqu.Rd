% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssdEqu.R
\name{porsEqu}
\alias{porsEqu}
\title{Probability of replication success based on effect size equivalence}
\usage{
porsEqu(level, dprior, margin, sr)
}
\arguments{
\item{level}{1 - confidence level of confidence interval for effect size
difference}

\item{dprior}{Design prior object}

\item{margin}{The equivalence margin > 0 for the symmetric equivalence region
around zero}

\item{sr}{Replication standard error}
}
\value{
The probability to achieve replication success
}
\description{
This function computes the probability to achieve replication
    success on equivalence of original and replication effect size. Effect
    size equivalence is defined by the confidence interval for the difference
    between the original and replication effect sizes falling within an
    equivalence region around zero defined by the specified margin.
}
\examples{
## specify design prior
to1 <- 2
so1 <- 0.05
dprior <- designPrior(to = to1, so = so1, tau = 0.1)
porsEqu(level = 0.1, dprior = dprior, margin = 0.3, sr = c(0.05, 0.03))

}
\references{
Pawel, S., Consonni, G., and Held, L. (2022). Bayesian approaches to
designing replication studies. arXiv preprint.
\doi{10.48550/arXiv.2211.02552}

Anderson, S. F. and Maxwell, S. E. (2016). There's more than one way to
conduct a replication study: Beyond statistical significance. Psychological
Methods, 21(1), 1-12. \doi{10.1037/met0000051}
}
\author{
Samuel Pawel
}
