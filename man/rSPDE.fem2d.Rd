% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{rSPDE.fem2d}
\alias{rSPDE.fem2d}
\title{Finite element calculations for problems in 2D}
\usage{
rSPDE.fem2d(FV, P)
}
\arguments{
\item{FV}{Matrix where each row defines a triangle}

\item{P}{Locations of the nodes in the mesh.}
}
\value{
The function returns a list with the following elements
\item{G }{The stiffness matrix with elements \eqn{(\nabla \phi_i, \nabla \phi_j)}.}
\item{C }{The mass matrix with elements \eqn{(\phi_i, \phi_j)}.}
\item{Cd }{The mass lumped matrix with diagonal elements \eqn{(\phi_i, 1)}.}
\item{Hxx }{Matrix with elements \eqn{(\partial_x \phi_i, \partial_x \phi_j)}.}
\item{Hyy }{Matrix with elements \eqn{(\partial_y \phi_i, \partial_y \phi_j)}.}
\item{Hxy }{Matrix with elements \eqn{(\partial_x \phi_i, \partial_y \phi_j)}.}
\item{Hyx }{Matrix with elements \eqn{(\partial_y \phi_i, \partial_x \phi_j)}.}
}
\description{
This function computes mass and stiffness matrices for a mesh in 2D, assuming
Neumann boundary conditions.
}
\examples{
P <- rbind(c(0, 0), c(1, 0), c(1, 1), c(0, 1))
FV <- rbind(c(1, 2, 3), c(2, 3, 4))
fem <- rSPDE.fem2d(FV, P)
}
\seealso{
\code{\link[=rSPDE.fem1d]{rSPDE.fem1d()}}
}
\author{
David Bolin \email{davidbolin@gmail.com}
}
