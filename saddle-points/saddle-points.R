saddle_point <- function(input) {
  if (nrow(input) == 0 || ncol(input) == 0) {
    return(data.frame(row = numeric(), col = numeric()))
  }
  
  result_rows <- numeric()
  result_cols <- numeric()
  
  for (i in 1:nrow(input)) {
    for (j in 1:ncol(input)) {
      current_value <- input[i, j]
      
      is_max_in_row <- all(current_value >= input[i, ])
      
      is_min_in_col <- all(current_value <= input[, j])
      
      if (is_max_in_row && is_min_in_col) {
        result_rows <- c(result_rows, i)
        result_cols <- c(result_cols, j)
      }
    }
  }
  
  return(data.frame(row = result_rows, col = result_cols))
}