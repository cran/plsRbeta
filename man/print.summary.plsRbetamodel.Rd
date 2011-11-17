\name{print.summary.plsRbetamodel}
\alias{print.summary.plsRbetamodel}
\title{Print method for summaries of plsRbeta models}
\description{
This function provides a print method for the class \code{"summary.plsRbetamodel"}
}
\usage{
\method{print}{summary.plsRbetamodel}(x, \dots)
}
\arguments{
  \item{x}{an object of the class \code{"summary.plsRbetamodel"}}
  \item{\dots}{not used}
}
%\details{}
\value{
  \item{language}{call of the model}
}
\references{\enc{Frédéric}{Fr\'ed\'eric} Bertrand, Myriam Maumy-Bertrand et Nicolas Meyer (2011). \enc{Régression}{R\'egression} \enc{Bêta}{B\^eta} PLS. \emph{Preprint}.
}
\author{\enc{Frédéric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\seealso{\code{\link{print}} and \code{\link{summary}}}
\examples{
data("GasolineYield",package="betareg")
modpls <- plsRbeta(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
print(summary(modpls))
}
\keyword{methods}
\keyword{print}
