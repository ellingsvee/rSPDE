% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{summary.CBrSPDEobj}
\alias{summary.CBrSPDEobj}
\alias{print.summary.CBrSPDEobj}
\alias{print.CBrSPDEobj}
\title{Summarise CBrSPDE objects}
\usage{
\method{summary}{CBrSPDEobj}(object, ...)

\method{print}{summary.CBrSPDEobj}(x, ...)

\method{print}{CBrSPDEobj}(x, ...)
}
\arguments{
\item{object}{an object of class "CBrSPDEobj", usually, a result of a call
to \code{\link[=matern.operators]{matern.operators()}}.}

\item{...}{further arguments passed to or from other methods.}

\item{x}{an object of class "summary.CBrSPDEobj", usually, a result of a call
to \code{\link[=summary.CBrSPDEobj]{summary.CBrSPDEobj()}}.}
}
\description{
Summary method for class "CBrSPDEobj"
}
\examples{
# Compute the covariance-based rational approximation of a
# Gaussian process with a Matern covariance function on R
kappa <- 10
sigma <- 1
nu <- 0.8
range <- sqrt(8 * nu) / kappa

# create mass and stiffness matrices for a FEM discretization
x <- seq(from = 0, to = 1, length.out = 101)
fem <- rSPDE.fem1d(x)

# compute rational approximation of covariance function at 0.5
tau <- sqrt(gamma(nu) / (sigma^2 * kappa^(2 * nu) *
  (4 * pi)^(1 / 2) * gamma(nu + 1 / 2)))
op_cov <- matern.operators(
  loc_mesh = x, nu = nu,
  range = range, sigma = sigma, d = 1, m = 2,
  parameterization = "matern"
)

op_cov
}
