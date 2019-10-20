convert <- function(input){
  if (input %% 15 == 0) return("Fizz Buzz")
  else if (input %% 3 == 0) return("Fizz")
  else if (input %% 5 == 0) return("Buzz")
  else return(toString(input))
  
}

fizz_buzz <- function(input) {
  sapply(c(1:input), convert)
}