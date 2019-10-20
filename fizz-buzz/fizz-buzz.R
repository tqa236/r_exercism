convert <- function(input){
  if (input %% 15 == 0) "Fizz Buzz"
  else if (input %% 3 == 0) "Fizz"
  else if (input %% 5 == 0) "Buzz"
  else toString(input)
  
}

fizz_buzz <- function(input) {
  sapply(c(1:input), convert)
}