is_pangram <- function(input) {
  sum(letters %in% strsplit(tolower (input), "")[[1]]) == 26
}
