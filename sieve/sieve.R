sieve <- function(limit) {
  if (limit < 2) return(c())
  numbers <- 2:limit
  primes <- c()
  while (length(numbers) > 0){
    prime <- numbers[1]
    primes <- c(primes, prime)
    numbers <- numbers[numbers %% prime != 0]
  }
  primes
}