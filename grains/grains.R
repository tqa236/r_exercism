square <- function(n) {
  if (n <= 0 || n > 64)  throw("n must be from 0 to 64")
  2^(n - 1)
}

total <- function() {
  2^64 - 1
}
