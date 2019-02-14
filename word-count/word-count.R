word_count <- function(input) {
  input <- trimws(gsub("[^[:alnum:]]", " ", tolower(input)))
  words <- strsplit(input, "\\s+")[[1]]
  frequency_table <- table(words)
  occurences <- as.list(frequency_table)
  names(occurences) <- names(frequency_table)
  occurences
}