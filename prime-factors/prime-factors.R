library(gmp)

prime_factors <- function(number) {
  if (number < 2) c()
  else factorize(number)
}