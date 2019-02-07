bob <- function(input) {
  if (grepl("^\\s*$", input)) "Fine. Be that way!"
  else if (str_sub(trimws(input, "r"), start = -1) == "?"){
    if ((input == toupper(input)) && (unlist(gregexpr("[A-Z]", input))[1] > 0)) "Calm down, I know what I'm doing!"
    else "Sure."
  }
  else if ((input == toupper(input)) && (unlist(gregexpr("[A-Z]", input))[1] > 0)) "Whoa, chill out!"
  else "Whatever."
}
