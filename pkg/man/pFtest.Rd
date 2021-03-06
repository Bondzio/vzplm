\name{pFtest}
\alias{pFtest}
\alias{pFtest.formula}
\alias{pFtest.plm}
\title{F Test for Individual and/or Time Effects}

\description{
Test of individual and/or time effects based on the comparison of the \code{within} and the \code{pooling} model.
}

\usage{
pFtest(x, ...)
\method{pFtest}{plm}(x, z, ...)
\method{pFtest}{formula}(x, data, ...)
}

\arguments{
 \item{x}{an object of class \code{"plm"} or of class \code{"formula"},}
 \item{z}{an object of class \code{"plm"},}
 \item{data}{a \code{data.frame},}
 \item{\dots}{further arguments.}
}

\value{
An object of class \code{"htest"}.
}

\details{
For the \code{plm} method, the argument of this function is two
\code{plm} objects, the first being a within model, the second a
pooling model. The effects tested are either individual, time or
twoways, depending on the effects introduced in the model.
}

\seealso{
\code{\link{plmtest}} for Lagrange multipliers tests of individuals and/or time effects.
}

\author{Yves Croissant}

\examples{
data("Grunfeld", package="plm")
gi <- plm(inv ~ value + capital, data = Grunfeld, model = "pooling")
gt <- plm(inv ~ value + capital, data = Grunfeld,
          effect = "time", model = "within")
gd <- plm(inv ~ value + capital, data = Grunfeld,
          effect = "twoways", model = "within")
pFtest(gt, gi)
pFtest(gd, gi)
pFtest(inv ~ value + capital, data = Grunfeld, effect = "twoways")
}

\keyword{htest}
