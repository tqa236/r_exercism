is_valid <- function(input) {
  if (!grepl ("^[0-9 ]*$", input)) return(FALSE)
  digits <- rev(strtoi(strsplit(gsub("\\D", "", input), "")[[1]]))
  if (length(digits) <= 1) return(FALSE)

  digits[c(FALSE, TRUE)] <- digits[c(FALSE, TRUE)] * 2
  digits[digits > 9] <- digits[digits > 9] - 9
  sum(digits) %% 10 == 0
}