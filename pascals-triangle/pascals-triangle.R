pascals_triangle <- function(n) {
  if (n == 0) return(list())
  if (n == 1) return(list(1))

  pascal <- pascals_triangle(n - 1)
  base <- tail(pascal, n = 1)[[1]]
  pascal[[n]] <- c(0, base) + c(base, 0)
  pascal
}
