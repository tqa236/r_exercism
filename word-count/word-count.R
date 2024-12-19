word_count <- function(input) {
  input <- tolower(input)
  input <- gsub("'([^[:alnum:]]|$)", " ", input)
  input <- gsub("([^[:alnum:]]|^)'", " ", input)
  input <- gsub("[^[:alnum:]'\\s]", " ", input)
  words <- unlist(strsplit(input, "\\s+"))
  words <- words[words != ""]
  frequency_table <- table(words)
  as.list(frequency_table)
}