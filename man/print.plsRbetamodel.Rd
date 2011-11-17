\name{print.plsRbetamodel}
\alias{print.plsRbetamodel}
\title{Print method for plsRbeta models}
\description{
This function provides a print method for the class \code{"plsRbetamodel"}
}
\usage{
\method{print}{plsRbetamodel}(x, \dots)
}
\arguments{
  \item{x}{an object of the class \code{"plsRbetamodel"}}
  \item{\dots}{not used}
}
%\details{}
\value{
\code{NULL}
}
\references{\enc{Frédéric}{Fr\'ed\'eric} Bertrand, Myriam Maumy-Bertrand et Nicolas Meyer (2011). \enc{Régression}{R\'egression} \enc{Bêta}{B\^eta} PLS. \emph{Preprint}.
}
\author{\enc{Frédéric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\seealso{\code{\link{print}}}
\examples{
data("GasolineYield",package="betareg")
modpls <- plsRbeta(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
print(modpls)
}
\keyword{methods}
\keyword{print}
