\name{summary.plsRbetamodel}
\alias{summary.plsRbetamodel}
\title{Summary method for plsRbeta models}
\description{
This function provides a summary method for the class \code{"plsRbetamodel"}
}
\usage{
\method{summary}{plsRbetamodel}(object, \dots)
}
\arguments{
  \item{object}{an object of the class \code{"plsRbetamodel"}}
  \item{\dots}{further arguments to be passed to or from methods.}  
}
%\details{}
\value{
  \item{call }{function call of plsR beta models}
}
\references{\enc{Frédéric}{Fr\'ed\'eric} Bertrand, Myriam Maumy-Bertrand et Nicolas Meyer (2011). \enc{Régression}{R\'egression} \enc{Bêta}{B\^eta} PLS. \emph{Preprint}.
}
\author{\enc{Frédéric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\seealso{\code{\link{summary}}}
\examples{
data("GasolineYield",package="betareg")
modpls <- plsRbeta(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
summary(modpls)
}
\keyword{methods}
\keyword{print}
