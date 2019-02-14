library(stringr)

word_count <- function(input) {
  as.list(strsplit(input, "\\s+")[[1]])
  str_count(strsplit(input, "\\s+")[[1]])
}
word_count("one of each")