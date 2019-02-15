parse_phone_number <- function(number_string) {
  number <- gsub("[^0-9]", "", number_string)
  digits <- strsplit(number, "")[[1]]
  length_number <- nchar(number)

  if ((length_number < 10) || (length_number > 11)) return(NULL)
  if (strtoi(digits[length(digits) - 9]) < 2) return(NULL) # Area code
  if (strtoi(digits[length(digits) - 6]) < 2) return(NULL) # Exchange code
  
  if (length_number == 11) {
    if (digits[1] != "1") NULL
    else substring(number, 2)
  }
  else number
}