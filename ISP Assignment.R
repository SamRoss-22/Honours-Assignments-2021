set.seed(340)
keep <- numeric(10)
first <- 5

for (i in 1:10) {
  r <- runif(1)
  p <- runif(1)
  
  if (r<=0.55 & p<=0.75 | r>0.55 & p>0.75) {
    keep[i] <- first
  } else if (r<=0.55 & p>0.75) {
    keep[i] <- first+1
  } else
  {
    keep[i] <- first-1
    
    first <- keep[i]
  }
  
}
keep