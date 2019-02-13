is_isogram <- function(word) {
  words <- gsub("[^[:alpha:]]", "", tolower(word))
  letters <- strsplit(words, "")[[1]]
  length(letters) == length(unique(letters))
}