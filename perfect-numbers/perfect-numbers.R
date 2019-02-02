number_type <- function(n){
  square_root = round(sqrt(n))
  numbers = 1:square_root
  
  smallDivisors <- numbers[n%%numbers == 0]
  bigDivisors = n/smallDivisors

  aliquot = sum(smallDivisors) + sum(bigDivisors)
  if (square_root^2 == n) aliquot = aliquot - square_root
  
  if (aliquot > 2 * n)  return("abundant")
  if (aliquot == 2 * n) return("perfect")
  "deficient"
}
