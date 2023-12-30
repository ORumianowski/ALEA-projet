




simul = function(d1=0.5, d2=1, mu_jour=1, mu_nuit=3){
  
  mu1 = (exp(-d1**2/2) * (12*mu_jour + 12*mu_nuit))
  mu2 = (exp(-d2**2/2) * (12*mu_jour + 12*mu_nuit))
  mu = mu1 + mu2
  
  rpois(1, lambda = mu)
  
}
  
estim_MC = function(rep=100000){
  
  C = 0
  for(i in 1:rep){
    C = C + simul()
  }
  return(C/rep)
}

estim_MC()


d1=0.5; d2=1; mu_jour=1; mu_nuit=3

mu1 = (exp(-d1**2/2) * (12*mu_jour + 12*mu_nuit))
mu2 = (exp(-d2**2/2) * (12*mu_jour + 12*mu_nuit))
mu = mu1 + mu2
mu
