\name{integral.linim}
\alias{integral.linim}
\alias{integral.linfun}
\title{
  Integral on a Linear Network
}
\description{
  Computes the integral (total value) of a function or pixel image
  over a linear network.
}
\usage{
\method{integral}{linim}(f, domain=NULL, ...)

\method{integral}{linfun}(f, domain=NULL, ..., delta)
}
\arguments{
  \item{f}{
    A pixel image on a linear network (class \code{"linim"})
    or a function on a linear network (class \code{"linfun"}).
  }
  \item{domain}{
    Optional window specifying the domain of integration.
  }
  \item{\dots}{
    Ignored.
  }
  \item{delta}{
    Optional. 
    The step length (in coordinate units)
    for computing the approximate integral.
    A single positive number.
  }
}
\details{
  The integral (total value of the function over the network) is calculated.
}
\value{
  A numeric value.
}
\seealso{
  \code{\link{linim}},
  \code{\link{integral.im}}
}
\examples{
  # make some data
  xcoord <- linfun(function(x,y,seg,tp) { x }, simplenet)
  integral(xcoord)
  X <- as.linim(xcoord)
  integral(X)
}
\author{
  \spatstatAuthors.
}
\keyword{spatial}
\keyword{math}
