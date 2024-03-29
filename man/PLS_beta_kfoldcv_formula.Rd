% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PLS_beta_kfoldcv_formula.R
\name{PLS_beta_kfoldcv_formula}
\alias{PLS_beta_kfoldcv_formula}
\title{Partial least squares regression beta models with kfold cross validation}
\usage{
PLS_beta_kfoldcv_formula(
  formula,
  data = NULL,
  nt = 2,
  limQ2set = 0.0975,
  modele = "pls",
  family = NULL,
  K = nrow(dataX),
  NK = 1,
  grouplist = NULL,
  random = FALSE,
  scaleX = TRUE,
  scaleY = NULL,
  keepcoeffs = FALSE,
  keepfolds = FALSE,
  keepdataY = TRUE,
  keepMclassed = FALSE,
  tol_Xi = 10^(-12),
  weights,
  subset,
  start = NULL,
  etastart,
  mustart,
  offset,
  method,
  control = list(),
  contrasts = NULL,
  sparse = FALSE,
  sparseStop = TRUE,
  naive = FALSE,
  link = NULL,
  link.phi = NULL,
  type = "ML",
  verbose = TRUE
)
}
\arguments{
\item{formula}{an object of class "\code{\link{formula}}" (or one that can
be coerced to that class): a symbolic description of the model to be fitted.
The details of model specification are given under 'Details'.}

\item{data}{an optional data frame, list or environment (or object coercible
by \code{\link{as.data.frame}} to a data frame) containing the variables in
the model. If not found in \code{data}, the variables are taken from
\code{environment(formula)}, typically the environment from which
\code{plsRglm} is called.}

\item{nt}{number of components to be extracted}

\item{limQ2set}{limit value for the Q2}

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

\item{K}{number of groups}

\item{NK}{number of times the group division is made}

\item{grouplist}{to specify the members of the \code{K} groups}

\item{random}{should the \code{K} groups be made randomly}

\item{scaleX}{scale the predictor(s) : must be set to TRUE for
\code{modele="pls"} and should be for glms pls.}

\item{scaleY}{scale the response : Yes/No. Ignored since non always possible
for glm responses.}

\item{keepcoeffs}{shall the coefficients for each model be returned}

\item{keepfolds}{shall the groups' composition be returned}

\item{keepdataY}{shall the observed value of the response for each one of
the predicted value be returned}

\item{keepMclassed}{shall the number of miss classed be returned
(unavailable)}

\item{tol_Xi}{minimal value for Norm2(Xi) and \eqn{\mathrm{det}(pp' \times
pp)}{det(pp'*pp)} if there is any missing value in the \code{dataX}. It
defaults to \eqn{10^{-12}}{10^{-12}}}

\item{weights}{an optional vector of 'prior weights' to be used in the
fitting process. Should be \code{NULL} or a numeric vector.}

\item{subset}{an optional vector specifying a subset of observations to be
used in the fitting process.}

\item{start}{starting values for the parameters in the linear predictor.}

\item{etastart}{starting values for the linear predictor.}

\item{mustart}{starting values for the vector of means.}

\item{offset}{this can be used to specify an \emph{a priori} known component
to be included in the linear predictor during fitting. This should be
\code{NULL} or a numeric vector of length equal to the number of cases. One
or more \code{\link{offset}} terms can be included in the formula instead or
as well, and if more than one is specified their sum is used. See
\code{\link{model.offset}}.}

\item{method}{\describe{ \item{for fitting glms with glm (}{the method to be
used in fitting the model. The default method \code{"glm.fit"} uses
iteratively reweighted least squares (IWLS). User-supplied fitting functions
can be supplied either as a function or a character string naming a
function, with a function which takes the same arguments as \code{glm.fit}.
If "model.frame", the model frame is
returned.}\item{list("\"pls-glm-Gamma\"")}{the method to be used in fitting
the model. The default method \code{"glm.fit"} uses iteratively reweighted
least squares (IWLS). User-supplied fitting functions can be supplied either
as a function or a character string naming a function, with a function which
takes the same arguments as \code{glm.fit}. If "model.frame", the model
frame is returned.}\item{, }{the method to be used in fitting the model. The
default method \code{"glm.fit"} uses iteratively reweighted least squares
(IWLS). User-supplied fitting functions can be supplied either as a function
or a character string naming a function, with a function which takes the
same arguments as \code{glm.fit}. If "model.frame", the model frame is
returned.}\item{list("\"pls-glm-gaussian\"")}{the method to be used in
fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is returned.}\item{, }{the method to be used
in fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is
returned.}\item{list("\"pls-glm-inverse.gaussian\"")}{the method to be used
in fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is returned.}\item{, }{the method to be used
in fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is
returned.}\item{list("\"pls-glm-logistic\"")}{the method to be used in
fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is returned.}\item{, }{the method to be used
in fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is
returned.}\item{list("\"pls-glm-poisson\"")}{the method to be used in
fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is returned.}\item{, }{the method to be used
in fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is
returned.}\item{list("\"modele=pls-glm-family\"")}{the method to be used in
fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is returned.}\item{)}{the method to be used
in fitting the model. The default method \code{"glm.fit"} uses iteratively
reweighted least squares (IWLS). User-supplied fitting functions can be
supplied either as a function or a character string naming a function, with
a function which takes the same arguments as \code{glm.fit}. If
"model.frame", the model frame is returned.}
\item{list("pls-glm-polr")}{logistic, probit, complementary log-log or
cauchit (corresponding to a Cauchy latent variable).}}}

\item{control}{a list of parameters for controlling the fitting process. For
\code{glm.fit} this is passed to \code{\link{glm.control}}.}

\item{contrasts}{an optional list. See the \code{contrasts.arg} of
\code{model.matrix.default}.}

\item{sparse}{should the coefficients of non-significant predictors
(<\code{alpha.pvals.expli}) be set to 0}

\item{sparseStop}{should component extraction stop when no significant
predictors (<\code{alpha.pvals.expli}) are found}

\item{naive}{Use the naive estimates for the Degrees of Freedom in plsR?
Default is \code{FALSE}.}

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
\item{results_kfolds}{list of \code{NK}. Each element of the list
sums up the results for a group division: \describe{ \item{list}{ of
\code{K} matrices of size about \code{nrow(dataX)/K * nt} with the predicted
values for a growing number of components} \item{list()}{\dots{}}
\item{list}{ of \code{K} matrices of size about \code{nrow(dataX)/K * nt}
with the predicted values for a growing number of components} }}
\item{folds}{list of \code{NK}. Each element of the list sums up the
informations for a group division: \describe{ \item{list}{ of \code{K}
vectors of length about \code{nrow(dataX)} with the numbers of the rows of
\code{dataX} that were used as a training set} \item{list()}{\dots{}}
\item{list}{ of \code{K} vectors of length about \code{nrow(dataX)} with the
numbers of the rows of \code{dataX} that were used as a training set} } }
\item{dataY_kfolds}{list of \code{NK}. Each element of the list sums up the
results for a group division: \describe{ \item{list}{ of \code{K} matrices
of size about \code{nrow(dataX)/K * 1} with the observed values of the
response} \item{list()}{\dots{}} \item{list}{ of \code{K} matrices of size
about \code{nrow(dataX)/K * 1} with the observed values of the response} } }
\item{call}{the call of the function}
}
\description{
This function implements kfold cross validation on complete or incomplete
datasets for partial least squares beta regression models (formula
specification of the model).
}
\details{
Predicts 1 group with the \code{K-1} other groups. Leave one out cross
validation is thus obtained for \code{K==nrow(dataX)}.

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

A typical predictor has the form response ~ terms where response is the
(numeric) response vector and terms is a series of terms which specifies a
linear predictor for response. A terms specification of the form first +
second indicates all the terms in first together with all the terms in
second with any duplicates removed.

A specification of the form first:second indicates the the set of terms
obtained by taking the interactions of all terms in first with all terms in
second. The specification first*second indicates the cross of first and
second. This is the same as first + second + first:second.

The terms in the formula will be re-ordered so that main effects come first,
followed by the interactions, all second-order, all third-order and so on:
to avoid this pass a terms object as the formula.

Non-NULL weights can be used to indicate that different observations have
different dispersions (with the values in weights being inversely
proportional to the dispersions); or equivalently, when the elements of
weights are positive integers w_i, that each response y_i is the mean of w_i
unit-weight observations.
}
\note{
Work for complete and incomplete datasets.
}
\examples{

\dontrun{
data("GasolineYield",package="betareg")
bbb <- PLS_beta_kfoldcv_formula(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
kfolds2CVinfos_beta(bbb)
}

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
\code{\link[plsRglm]{kfolds2coeff}},
\code{\link[plsRglm]{kfolds2Pressind}}, \code{\link[plsRglm]{kfolds2Press}},
\code{\link[plsRglm]{kfolds2Mclassedind}},
\code{\link[plsRglm]{kfolds2Mclassed}} and
\code{\link[plsRbeta]{kfolds2CVinfos_beta}} to extract and transform results
from kfold cross validation.
}
\author{
Frédéric Bertrand\cr
\email{frederic.bertrand@utt.fr}\cr
\url{https://fbertran.github.io/homepage/}
}
\keyword{models}
\keyword{regression}
