pkgname <- "plsRbeta"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('plsRbeta')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("PLS_beta")
### * PLS_beta

flush(stderr()); flush(stdout())

### Name: PLS_beta
### Title: Partial least squares Regression generalized linear models
### Aliases: PLS_beta
### Keywords: models regression

### ** Examples


data("GasolineYield",package="betareg")
yGasolineYield <- GasolineYield$yield
XGasolineYield <- GasolineYield[,2:5]
modpls <- PLS_beta(yGasolineYield,XGasolineYield,nt=3,modele="pls-beta")
modpls$uscores
modpls$pp
modpls$Coeffs
modpls$Std.Coeffs
modpls$InfCrit
modpls$PredictY[1,]
rm("modpls")




cleanEx()
nameEx("PLS_beta_formula")
### * PLS_beta_formula

flush(stderr()); flush(stdout())

### Name: PLS_beta_formula
### Title: Partial least squares Regression generalized linear models
### Aliases: PLS_beta_formula
### Keywords: models regression

### ** Examples


data("GasolineYield",package="betareg")
modpls <- PLS_beta_formula(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
modpls$uscores
modpls$pp
modpls$Coeffs
modpls$Std.Coeffs
modpls$InfCrit
modpls$PredictY[1,]
rm("modpls")




cleanEx()
nameEx("PLS_beta_kfoldcv")
### * PLS_beta_kfoldcv

flush(stderr()); flush(stdout())

### Name: PLS_beta_kfoldcv
### Title: Partial least squares regression beta models with kfold cross
###   validation
### Aliases: PLS_beta_kfoldcv
### Keywords: models regression

### ** Examples

## Not run: 
##D data("GasolineYield",package="betareg")
##D yGasolineYield <- GasolineYield$yield
##D XGasolineYield <- GasolineYield[,2:5]
##D bbb <- PLS_beta_kfoldcv(yGasolineYield,XGasolineYield,nt=3,modele="pls-beta")
##D kfolds2CVinfos_beta(bbb)
## End(Not run)



cleanEx()
nameEx("PLS_beta_kfoldcv_formula")
### * PLS_beta_kfoldcv_formula

flush(stderr()); flush(stdout())

### Name: PLS_beta_kfoldcv_formula
### Title: Partial least squares regression beta models with kfold cross
###   validation
### Aliases: PLS_beta_kfoldcv_formula
### Keywords: models regression

### ** Examples

## Not run: 
##D data("GasolineYield",package="betareg")
##D bbb <- PLS_beta_kfoldcv_formula(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
##D kfolds2CVinfos_beta(bbb)
## End(Not run)



cleanEx()
nameEx("PLS_beta_wvc")
### * PLS_beta_wvc

flush(stderr()); flush(stdout())

### Name: PLS_beta_wvc
### Title: Light version of PLS\_beta for cross validation purposes
### Aliases: PLS_beta_wvc
### Keywords: models regression

### ** Examples


data("GasolineYield",package="betareg")
yGasolineYield <- GasolineYield$yield
XGasolineYield <- GasolineYield[,2:5]
modpls <- PLS_beta_wvc(yGasolineYield,XGasolineYield,nt=3,modele="pls-beta")
modpls
rm("modpls")




cleanEx()
nameEx("bootplsbeta")
### * bootplsbeta

flush(stderr()); flush(stdout())

### Name: bootplsbeta
### Title: Non-parametric Bootstrap for PLS generalized linear models
### Aliases: bootplsbeta
### Keywords: models

### ** Examples



cleanEx()
nameEx("coefs.plsRbeta")
### * coefs.plsRbeta

flush(stderr()); flush(stdout())

### Name: coefs.plsRbeta
### Title: Coefficients for bootstrap computations
### Aliases: coefs.plsRbeta
### Keywords: models

### ** Examples

data("GasolineYield",package="betareg")



cleanEx()
nameEx("kfolds2CVinfos_beta")
### * kfolds2CVinfos_beta

flush(stderr()); flush(stdout())

### Name: kfolds2CVinfos_beta
### Title: Extracts and computes information criteria and fits statistics
###   for kfold cross validated partial least squares beta regression
###   models
### Aliases: kfolds2CVinfos_beta
### Keywords: models regression

### ** Examples

## Not run: 
##D data("GasolineYield",package="betareg")
##D bbb <- PLS_beta_kfoldcv_formula(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
##D kfolds2CVinfos_beta(bbb)
## End(Not run)



cleanEx()
nameEx("kfolds2Chisq")
### * kfolds2Chisq

flush(stderr()); flush(stdout())

### Name: kfolds2Chisq
### Title: Computes Predicted Chisquare for kfold cross validated partial
###   least squares regression models.
### Aliases: kfolds2Chisq
### Keywords: models regression

### ** Examples

## Not run: 
##D data("GasolineYield",package="betareg")
##D yGasolineYield <- GasolineYield$yield
##D XGasolineYield <- GasolineYield[,2:5]
##D bbb <- PLS_beta_kfoldcv(yGasolineYield,XGasolineYield,nt=3,modele="pls-beta")
##D plsRbeta:::kfolds2Chisq(bbb)
## End(Not run)



cleanEx()
nameEx("kfolds2Chisqind")
### * kfolds2Chisqind

flush(stderr()); flush(stdout())

### Name: kfolds2Chisqind
### Title: Computes individual Predicted Chisquare for kfold cross
###   validated partial least squares regression models.
### Aliases: kfolds2Chisqind
### Keywords: models regression

### ** Examples

## Not run: 
##D data("GasolineYield",package="betareg")
##D yGasolineYield <- GasolineYield$yield
##D XGasolineYield <- GasolineYield[,2:5]
##D bbb <- PLS_beta_kfoldcv(yGasolineYield,XGasolineYield,nt=3,modele="pls-beta")
##D plsRbeta:::kfolds2Chisqind(bbb)
## End(Not run)



cleanEx()
nameEx("permcoefs.plsRbeta")
### * permcoefs.plsRbeta

flush(stderr()); flush(stdout())

### Name: permcoefs.plsRbeta
### Title: Coefficients computation for permutation bootstrap
### Aliases: permcoefs.plsRbeta
### Keywords: models

### ** Examples



cleanEx()
nameEx("plsRbeta")
### * plsRbeta

flush(stderr()); flush(stdout())

### Name: plsRbeta
### Title: Partial least squares Regression generalized linear models
### Aliases: plsRbeta plsRbetamodel.default plsRbetamodel.formula
### Keywords: models regression

### ** Examples


data("GasolineYield",package="betareg")
modpls <- plsRbeta(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
modpls$uscores
modpls$pp
modpls$Coeffs
modpls$Std.Coeffs
modpls$InfCrit
modpls$PredictY[1,]
rm("modpls")

data("GasolineYield",package="betareg")
yGasolineYield <- GasolineYield$yield
XGasolineYield <- GasolineYield[,2:5]
modpls <- plsRbeta(yGasolineYield,XGasolineYield,nt=3,modele="pls-beta")
modpls$uscores
modpls$pp
modpls$Coeffs
modpls$Std.Coeffs
modpls$InfCrit
modpls$PredictY[1,]
rm("modpls")




cleanEx()
nameEx("print.plsRbetamodel")
### * print.plsRbetamodel

flush(stderr()); flush(stdout())

### Name: print.plsRbetamodel
### Title: Print method for plsRbeta models
### Aliases: print.plsRbetamodel
### Keywords: methods print

### ** Examples

data("GasolineYield",package="betareg")
modpls <- plsRbeta(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
print(modpls)



cleanEx()
nameEx("print.summary.plsRbetamodel")
### * print.summary.plsRbetamodel

flush(stderr()); flush(stdout())

### Name: print.summary.plsRbetamodel
### Title: Print method for summaries of plsRbeta models
### Aliases: print.summary.plsRbetamodel
### Keywords: methods print

### ** Examples

data("GasolineYield",package="betareg")
modpls <- plsRbeta(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
print(summary(modpls))



cleanEx()
nameEx("simul_data_UniYX_beta")
### * simul_data_UniYX_beta

flush(stderr()); flush(stdout())

### Name: simul_data_UniYX_beta
### Title: Data generating function for univariate beta plsR models
### Aliases: simul_data_UniYX_beta
### Keywords: datagen utilities

### ** Examples




cleanEx()
nameEx("summary.plsRbetamodel")
### * summary.plsRbetamodel

flush(stderr()); flush(stdout())

### Name: summary.plsRbetamodel
### Title: Summary method for plsRbeta models
### Aliases: summary.plsRbetamodel
### Keywords: methods print

### ** Examples

data("GasolineYield",package="betareg")
modpls <- plsRbeta(yield~.,data=GasolineYield,nt=3,modele="pls-beta")
summary(modpls)



cleanEx()
nameEx("tilt.bootplsbeta")
### * tilt.bootplsbeta

flush(stderr()); flush(stdout())

### Name: tilt.bootplsbeta
### Title: Tilted bootstrap for PLS models
### Aliases: tilt.bootplsbeta
### Keywords: models

### ** Examples



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
