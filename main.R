## ctmcd is a package for the estimation of Markov generator matrices (i.e., the parameters of a continuous-time Markov chain

library(ctmcd)

data(tm_abs)

#A maximum likelihood estimate can be obtained by the EM algorithm,
# additionally requiring a starting value gmguess.

gm0=matrix(1,8,8)
diag(gm0)=0
diag(gm0)=-rowSums(gm0)
gm0[8,]=0

# time elapsed in transition process = 1
## method :: Expectation-Maximization Al- gorithm

gmem=gm(tm_abs,te=1,method="EM",gmguess=gm0)
gmem

##Confidence intervals

ciem=gmci(gmem,alpha=0.05)


plot(gmem)
