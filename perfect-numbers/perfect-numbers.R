number_type <- function(n){
  square_root <- round(sqrt(n))
  numbers <- 1:square_root

  small_divisors <- numbers[n %% numbers == 0]
  big_divisors <- n / small_divisors

  aliquot <- sum(small_divisors) + sum(big_divisors)
  if (square_root ^ 2 == n) aliquot <- aliquot - square_root

  if (aliquot > 2 * n)  return("abundant")
  if (aliquot == 2 * n) return("perfect")
  "deficient"
}
