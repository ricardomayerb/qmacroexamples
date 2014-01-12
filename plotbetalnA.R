beta = 0.99
mua = 1
T = 1000
vbeta = cumprod(rep(beta,T))
lnA0 = 0
vlnA = cumsum(rep(mua,T))


plot(cumsum(vbeta*vlnA), type='l')
