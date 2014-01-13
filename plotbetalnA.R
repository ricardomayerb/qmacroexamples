library(ggplot2)
beta = 0.999
betas = c(0.98,0.99,0.995)
mua = 0.003
T = 2000
vlnA = cumsum(rep(mua,T)) #assumes first ln(A) equal to zero

seriesvalue = vector()
for(i in 1:length(betas)){
  beta = betas[i]
  vbeta = cumprod(rep(beta,T))
  seriesvalue = rbind(seriesvalue , cumsum(vbeta*vlnA))
}

tsseries = as.ts(t(seriesvalue))

plot(tsseries, plot.type="single")



