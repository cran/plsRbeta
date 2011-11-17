\name{tilt.bootplsbeta}
\alias{tilt.bootplsbeta}
\title{Tilted bootstrap for PLS models}
\description{
  ~~ A (1-5 lines) description of what the function does. ~~
}
\usage{
tilt.bootplsbeta(object, typeboot="plsmodel", statistic=coefs.plsRbeta, R=c(499, 250, 250), alpha=c(0.025, 0.975), sim="ordinary", stype="i", index=1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{ ~~Explain \code{object} here~~ }
  \item{typeboot}{ ~~Explain \code{typeboot} here~~ }
  \item{statistic}{ ~~Explain \code{statistic} here~~ }
  \item{R}{ ~~Explain \code{R} here~~ }
  \item{alpha}{ ~~Explain \code{alpha} here~~ }
  \item{sim}{ ~~Explain \code{sim} here~~ }
  \item{stype}{ ~~Explain \code{stype} here~~ }
  \item{index}{ ~~Explain \code{index} here~~ }
}
\details{
  ~~ More details than the description above ~~
}
\value{
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\references{\enc{Frédéric}{Fr\'ed\'eric} Bertrand, Myriam Maumy-Bertrand et Nicolas Meyer (2011). \enc{Régression}{R\'egression} \enc{Bêta}{B\^eta} PLS. \emph{Preprint}.
}
\author{\enc{Frédéric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\note{ ~~some notes~~ 
}
\seealso{\code{\link[boot:boot]{tilt.boot}}}
\examples{\donttest{
data("GasolineYield",package="betareg")

GazYield.tilt.boot <- tilt.bootplsbeta(plsRbeta(yield~.,data=GasolineYield,nt=3,modele="pls-beta"), statistic=coefs.plsRbeta, R=c(499, 100, 100), alpha=c(0.025, 0.975), sim="balanced", stype="i", index=1)
boxplots.bootpls(GazYield.tilt.boot,1:2)

}
}\keyword{models}
