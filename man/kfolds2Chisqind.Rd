\name{kfolds2Chisqind}
\alias{kfolds2Chisqind}
\title{Computes individual Predicted Chisquare for kfold cross validated partial least squares regression models.}
\description{This function computes individual Predicted Chisquare for kfold cross validated partial least squares regression models.}
\usage{
kfolds2Chisqind(pls_kfolds)
}
\arguments{
  \item{pls_kfolds}{a kfold cross validated partial least squares regression glm model}
}
%\details{}
\value{
  \item{list}{Individual PChisq vs number of components for the first group partition}
  \item{\dots}{\dots}
  \item{list}{Individual PChisq vs number of components for the last group partition}
}
\references{\enc{Frédéric}{Fr\'ed\'eric} Bertrand, Myriam Maumy-Bertrand et Nicolas Meyer (2011). \enc{Régression}{R\'egression} \enc{Bêta}{B\^eta} PLS. \emph{Preprint}.
}
\author{\enc{Frédéric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\note{Use \code{\link{PLS_beta_kfoldcv}} to create kfold cross validated partial least squares regression glm models.}
\seealso{\code{\link[plsRglm]{kfolds2coeff}}, \code{\link[plsRglm]{kfolds2Press}}, \code{\link[plsRglm]{kfolds2Pressind}}, \code{\link{kfolds2Chisq}}, \code{\link[plsRglm]{kfolds2Mclassedind}} and \code{\link[plsRglm]{kfolds2Mclassed}} to extract and transforms results from kfold cross validation.}
\examples{
\dontrun{
data("GasolineYield",package="betareg")
yGasolineYield <- GasolineYield$yield
XGasolineYield <- GasolineYield[,2:5]
bbb <- PLS_beta_kfoldcv(yGasolineYield,XGasolineYield,nt=3,modele="pls-beta")
plsRbeta:::kfolds2Chisqind(bbb)
}
}
\keyword{models}
\keyword{regression}
