# Description #

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version-last-release/rSPDE)](https://cran.r-project.org/package=rSPDE)
[![CRAN_Downloads](https://cranlogs.r-pkg.org/badges/grand-total/rSPDE)](https://cranlogs.r-pkg.org/badges/grand-total/rSPDE)

rSPDE is an R package used for computing rational approximations of fractional SPDEs These rational approximations can be used for computatially efficient statistical inference.

Basic statistical operations such as likelihood evaluations and kriging predictions using the fractional approximations are also implemented.

For illustration purposes, the package contains a simple FEM implementation for models on R. See the 
[Vignette][ref2] for an introduction to the package. 

# Reference #
D. Bolin and K. Kichner, [The rational SPDE approach for Gaussian random fields with general smoothness][ref]. Journal of Computational and Graphical Statistics.

# Installation instructions #
The latest CRAN release of the package can be installed directly from CRAN with `install.packages("rSPDE")`.
The latest stable version (which is sometimes slightly more recent than the CRAN version), can be installed by using the command
```r
remotes::install_bitbucket("davidbolin/rSPDE", ref = "master")
```
in R. The development version can be installed using the command
```r
remotes::install_bitbucket("davidbolin/rSPDE", ref = "devel")
```



[ref]: https://www.tandfonline.com/doi/full/10.1080/10618600.2019.1665537  "The rational SPDE approach for Gaussian random fields with general smoothness"
[ref2]: https://cran.r-project.org/web/packages/rSPDE/vignettes/rspde.html "Vignette"