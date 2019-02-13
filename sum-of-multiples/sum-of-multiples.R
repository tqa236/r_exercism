sum_of_multiples <- function(factors, limit) {
  numbers <- 1:(limit - 1)
  chosen <- sapply(numbers, function(x){any(x %% factors == 0)})
  sum(numbers[chosen])
}
