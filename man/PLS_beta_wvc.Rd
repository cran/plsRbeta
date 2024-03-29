% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PLS_beta_wvc.R
\name{PLS_beta_wvc}
\alias{PLS_beta_wvc}
\title{Light version of PLS_beta for cross validation purposes}
\usage{
PLS_beta_wvc(
  dataY,
  dataX,
  nt = 2,
  dataPredictY = dataX,
  modele = "pls",
  family = NULL,
  scaleX = TRUE,
  scaleY = NULL,
  keepcoeffs = FALSE,
  keepstd.coeffs = FALSE,
  tol_Xi = 10^(-12),
  weights,
  method = "logistic",
  link = NULL,
  link.phi = NULL,
  type = "ML",
  verbose = TRUE
)
}
\arguments{
\item{dataY}{response (training) dataset}

\item{dataX}{predictor(s) (training) dataset}

\item{nt}{number of components to be extracted}

\item{dataPredictY}{predictor(s) (testing) dataset}

\item{modele}{name of the PLS glm or PLS beta model to be fitted
(\code{"pls"}, \code{"pls-glm-Gamma"}, \code{"pls-glm-gaussian"},
\code{"pls-glm-inverse.gaussian"}, \code{"pls-glm-logistic"},
\code{"pls-glm-poisson"}, \code{"pls-glm-polr"}, \code{"pls-beta"}). Use
\code{"modele=pls-glm-family"} to enable the \code{family} option.}

\item{family}{a description of the error distribution and link function to
be used in the model. This can be a character string naming a family
function, a family function or the result of a call to a family function.
(See \code{\link[stats]{family}} for details of family functions.) To use
the family option, please set \code{modele="pls-glm-family"}. User defined
families can also be defined. See details.}

\item{scaleX}{scale the predictor(s) : must be set to TRUE for
\code{modele="pls"} and should be for glms pls.}

\item{scaleY}{scale the response : Yes/No. Ignored since non always possible
for glm responses.}

\item{keepcoeffs}{whether the coefficients of the linear fit on link scale
of unstandardized eXplanatory variables should be returned or not.}

\item{keepstd.coeffs}{whether the coefficients of the linear fit on link
scale of standardized eXplanatory variables should be returned or not.}

\item{tol_Xi}{minimal value for Norm2(Xi) and \eqn{\mathrm{det}(pp' \times
pp)}{det(pp'*pp)} if there is any missing value in the \code{dataX}. It
defaults to \eqn{10^{-12}}{10^{-12}}}

\item{weights}{an optional vector of 'prior weights' to be used in the
fitting process. Should be \code{NULL} or a numeric vector.}

\item{method}{logistic, probit, complementary log-log or cauchit
(corresponding to a Cauchy latent variable).}

\item{link}{character specification of the link function in the mean model
(mu). Currently, "\code{logit}", "\code{probit}", "\code{cloglog}",
"\code{cauchit}", "\code{log}", "\code{loglog}" are supported.
Alternatively, an object of class "\code{link-glm}" can be supplied.}

\item{link.phi}{character specification of the link function in the
precision model (phi). Currently, "\code{identity}", "\code{log}",
"\code{sqrt}" are supported. The default is "\code{log}" unless
\code{formula} is of type \code{y~x} where the default is "\code{identity}"
(for backward compatibility). Alternatively, an object of class
"\code{link-glm}" can be supplied.}

\item{type}{character specification of the type of estimator. Currently,
maximum likelihood ("\code{ML}"), ML with bias correction ("\code{BC}"), and
ML with bias reduction ("\code{BR}") are supported.}

\item{verbose}{should info messages be displayed ?}
}
\value{
\item{valsPredict}{\code{nrow(dataPredictY) * nt} matrix of the
predicted values} \item{list("coeffs")}{ If the coefficients of the
eXplanatory variables were requested:\cr i.e. \code{keepcoeffs=TRUE}.\cr
\code{ncol(dataX) * 1} matrix of the coefficients of the the eXplanatory
variables}
}
\description{
Light version of \code{PLS_beta} for cross validation purposes either on
complete or incomplete datasets.
}
\details{
This function is called by \code{\link{PLS_glm_kfoldcv_formula}} in order to
perform cross validation either on complete or incomplete datasets.

There are seven different predefined models with predefined link functions
available : \describe{ \item{list("\"pls\"")}{ordinary pls models}
\item{list("\"pls-glm-Gamma\"")}{glm gaussian with inverse link pls models}
\item{list("\"pls-glm-gaussian\"")}{glm gaussian with identity link pls
models} \item{list("\"pls-glm-inverse-gamma\"")}{glm binomial with square
inverse link pls models} \item{list("\"pls-glm-logistic\"")}{glm binomial
with logit link pls models} \item{list("\"pls-glm-poisson\"")}{glm poisson
with log link pls models} \item{list("\"pls-glm-polr\"")}{glm polr with
logit link pls models} } Using the \code{"family="} option and setting
\code{"modele=pls-glm-family"} allows changing the family and link function
the same way as for the \code{\link[stats]{glm}} function. As a consequence
user-specified families can also be used.  \describe{ \item{The }{accepts
the links (as names) \code{identity}, \code{log} and
\code{inverse}.}\item{list("gaussian")}{accepts the links (as names)
\code{identity}, \code{log} and \code{inverse}.}\item{ family}{accepts the
links (as names) \code{identity}, \code{log} and \code{inverse}.} \item{The
}{accepts the links \code{logit}, \code{probit}, \code{cauchit},
(corresponding to logistic, normal and Cauchy CDFs respectively) \code{log}
and \code{cloglog} (complementary log-log).}\item{list("binomial")}{accepts
the links \code{logit}, \code{probit}, \code{cauchit}, (corresponding to
logistic, normal and Cauchy CDFs respectively) \code{log} and \code{cloglog}
(complementary log-log).}\item{ family}{accepts the links \code{logit},
\code{probit}, \code{cauchit}, (corresponding to logistic, normal and Cauchy
CDFs respectively) \code{log} and \code{cloglog} (complementary log-log).}
\item{The }{accepts the links \code{inverse}, \code{identity} and
\code{log}.}\item{list("Gamma")}{accepts the links \code{inverse},
\code{identity} and \code{log}.}\item{ family}{accepts the links
\code{inverse}, \code{identity} and \code{log}.} \item{The }{accepts the
links \code{log}, \code{identity}, and
\code{sqrt}.}\item{list("poisson")}{accepts the links \code{log},
\code{identity}, and \code{sqrt}.}\item{ family}{accepts the links
\code{log}, \code{identity}, and \code{sqrt}.} \item{The }{accepts the links
\code{1/mu^2}, \code{inverse}, \code{identity} and
\code{log}.}\item{list("inverse.gaussian")}{accepts the links \code{1/mu^2},
\code{inverse}, \code{identity} and \code{log}.}\item{ family}{accepts the
links \code{1/mu^2}, \code{inverse}, \code{identity} and \code{log}.}
\item{The }{accepts the links \code{logit}, \code{probit}, \code{cloglog},
\code{identity}, \code{inverse}, \code{log}, \code{1/mu^2} and
\code{sqrt}.}\item{list("quasi")}{accepts the links \code{logit},
\code{probit}, \code{cloglog}, \code{identity}, \code{inverse}, \code{log},
\code{1/mu^2} and \code{sqrt}.}\item{ family}{accepts the links
\code{logit}, \code{probit}, \code{cloglog}, \code{identity},
\code{inverse}, \code{log}, \code{1/mu^2} and \code{sqrt}.} \item{The
function }{can be used to create a power link
function.}\item{list("power")}{can be used to create a power link function.}
}

Non-NULL weights can be used to indicate that different observations have
different dispersions (with the values in weights being inversely
proportional to the dispersions); or equivalently, when the elements of
weights are positive integers w_i, that each response y_i is the mean of w_i
unit-weight observations.
}
\examples{


data("GasolineYield",package="betareg")
yGasolineYield <- GasolineYield$yield
XGasolineYield <- GasolineYield[,2:5]
modpls <- PLS_beta_wvc(yGasolineYield,XGasolineYield,nt=3,modele="pls-beta")
modpls
rm("modpls")


}
\references{
Frédéric Bertrand, Nicolas Meyer,
Michèle Beau-Faller, Karim El Bayed, Izzie-Jacques Namer,
Myriam Maumy-Bertrand (2013). Régression Bêta
PLS. \emph{Journal de la Société Française de Statistique},
\bold{154}(3):143-159.
\url{http://publications-sfds.math.cnrs.fr/index.php/J-SFdS/article/view/215}
}
\seealso{
\code{\link{PLS_beta}} for more detailed results,
\code{\link{PLS_beta_kfoldcv}} for cross validating models and
\code{\link{PLS_lm_wvc}} for the same function dedicated to plsR models
}
\author{
Frédéric Bertrand\cr
\email{frederic.bertrand@utt.fr}\cr
\url{https://fbertran.github.io/homepage/}
}
\keyword{models}
\keyword{regression}
