prime_factors <- function(n) {
  if (n < 2) return(c())
  
  factors <- c()
  candidate <- 2
  
  while (n > 1) {
    while (n %% candidate == 0) {
      factors <- c(factors, candidate)
      n <- n / candidate
    }
    candidate <- candidate + 1
    if (candidate * candidate > n && n > 1) {
      factors <- c(factors, n)
      break
    }
  }
  
  return(factors)
}
