library(numbers)

prime_factors <- function(number) {
  if (number < 2) c()
  else primeFactors(number)
}