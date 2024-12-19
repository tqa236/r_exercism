acronym <- function(input) {
  words <- unlist(strsplit(toupper(input), "[^[:alpha:]']+"))
  words <- words[words != ""]
  paste(substr(words, 1, 1), collapse = "")
}
