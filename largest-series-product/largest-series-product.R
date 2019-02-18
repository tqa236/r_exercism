largest_series_product <- function(digits, span){
  if (!grepl ("^[0-9]*$", digits)) stop ("Invalid number")
  if ((span > nchar(digits)) || (span < 0)) stop("Invalid span")
  if ((span != 0) && (digits == "")) stop("Invalid number")
  if (span == 0) return(1)
  
  digits_vector <-strtoi(strsplit(digits, "")[[1]])
  sub_vector_span <- 1: (length(digits_vector) - span + 1)
  max(sapply(sub_vector_span, function(x){prod(digits_vector[x : (x + span - 1)])}))
}