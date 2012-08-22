\name{simul_data_UniYX_beta}
\alias{simul_data_UniYX_beta}
\title{Data generating function for univariate beta plsR models}
\description{
This function generates a single univariate rate response value \eqn{Y} and a vector of explanatory variables \eqn{(X_1,\ldots,X_{totdim})} drawn from a model with a given number of latent components.
}
\usage{
simul_data_UniYX_beta(totdim, ncomp, disp=1, link="logit", type="a", phi0=20)
}
\arguments{
  \item{totdim}{Number of columns of the X vector (from \code{ncomp} to hardware limits)}
  \item{ncomp}{Number of latent components in the model (from 2 to 6)}
  \item{disp}{Tune the shape of the beta distribution (defaults to 1)}
  \item{link}{Character specification of the link function in the mean model (mu). Currently, "\code{logit}", "\code{probit}", "\code{cloglog}", "\code{cauchit}", "\code{log}", "\code{loglog}" are supported. Alternatively, an object of class "link-glm" can be supplied.}
  \item{type}{Simulation scheme}
  \item{phi0}{Simulation scheme "a" parameter}
}
\details{
This function should be combined with the replicate function to give rise to a larger dataset. The algorithm used is a modification of a \R{} port of the one described in the article of Li which is a multivariate generalization of the algorithm of Naes and Martens.
}
\value{
  \item{vector}{\eqn{(Y,X_1,\ldots,X_{totdim})}}
}
\references{
T. Naes, H. Martens, Comparison of prediction methods for 
multicollinear data, Commun. Stat., Simul. 14 (1985) 545-576.
\url{http://dx.doi.org/10.1080/03610918508812458}
 
Baibing Li, Julian Morris, Elaine B. Martin,
Model selection for partial least squares regression, 
Chemometrics and Intelligent Laboratory Systems 64 (2002) 79-89.
\url{http://dx.doi.org/10.1016/S0169-7439(02)00051-5}
}
\author{\enc{Fr�d�ric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
%\note{}
\seealso{\code{\link[plsRglm]{simul_data_UniYX}}}
\examples{
\donttest{
# logit link
layout(matrix(1:4,nrow=2))
hist(t(replicate(100,simul_data_UniYX_beta(4,4)))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=3)))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=5)))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=15)))[,1])
layout(1)

# probit link
layout(matrix(1:4,nrow=2))
hist(t(replicate(100,simul_data_UniYX_beta(4,4,link="probit")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=3,link="probit")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=5,link="probit")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=15,link="probit")))[,1])
layout(1)

# cloglog link
layout(matrix(1:4,nrow=2))
hist(t(replicate(100,simul_data_UniYX_beta(4,4,link="cloglog")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=3,link="cloglog")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=5,link="cloglog")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=15,link="cloglog")))[,1])
layout(1)

# cauchit link
layout(matrix(1:4,nrow=2))
hist(t(replicate(100,simul_data_UniYX_beta(4,4,link="cauchit")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=3,link="cauchit")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=5,link="cauchit")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=15,link="cauchit")))[,1])
layout(1)

# loglog link
layout(matrix(1:4,nrow=2))
hist(t(replicate(100,simul_data_UniYX_beta(4,4,link="loglog")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=3,link="loglog")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=5,link="loglog")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=15,link="loglog")))[,1])
layout(1)

# log link
layout(matrix(1:4,nrow=2))
hist(t(replicate(100,simul_data_UniYX_beta(4,4,link="log")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=3,link="log")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=5,link="log")))[,1])
hist(t(replicate(100,simul_data_UniYX_beta(4,4,disp=15,link="log")))[,1])
layout(1)
}
}
\keyword{datagen}
\keyword{utilities}
