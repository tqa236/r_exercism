single_collatz_step_counter <- function(num) {
  if (num <= 0) STOP("Invalid number!")
  count <- 0;
  while (num > 1){
    if (num %% 2 == 0) num <- num / 2
    else num <- num * 3 + 1
    count <- count + 1
  }
  count
}

collatz_step_counter <- function(num) {
  sapply(num, single_collatz_step_counter)
}
