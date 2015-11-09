require(IdMappingAnalysis)
args(fit2clusters)
fit = fit2clusters(testMe=TRUE, seed=NA, simV=c(0.1,0.1)^2, 
                   estimatesOnly=F)
head(fit)
plot(fit$Y, fit$posteriorOdds, log="y")
fit2clusters(testMe=TRUE, seed=NA, simV=c(0,0), 
             estimatesOnly=F)
fit = fit2clusters(testMe=TRUE, seed=NA, simV=c(0,0), 
                   estimatesOnly=F)
head(fit)
plot(fit$Y, fit$posteriorOdds, log="y")

fit = fit2clusters(testMe=TRUE, seed=NA, simV=c(0.1,0.1), 
                   estimatesOnly=F)

