beta = 0.999
betas = c(0.98,0.99,0.999)
mua = 0.003
T = 5000
lnA0 = 0
vlnA = cumsum(rep(mua,T))

seriesvalue = vector()
for(i in 1:length(betas)){
  beta = betas[i]
  vbeta = cumprod(rep(beta,T))
  seriesvalue = rbind(seriesvalue , cumsum(vbeta*vlnA))
}



plot(seriesvalue[3,], type='l')
