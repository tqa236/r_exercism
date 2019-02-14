types <- list(
  c("equilateral", "isosceles"),
  c("isosceles"),
  c("scalene")
)

triangle <- function(x, y, z) {
  if ((min(x, y, z) <= 0) || (x + y + z < 2 * max(x, y, z))){
    stop("Not a triangle!")
  }
  point <- (x == y) + (y == z) + (z == x)
  if (point == 3) structure(NULL, class = types[[1]])
  else if (point == 1) structure(NULL, class = types[[2]])
  else structure(NULL, class = types[[3]])
}