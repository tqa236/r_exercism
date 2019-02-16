scrabble_score <- function(input){
  chars <- strsplit(tolower(input), "")[[1]]
  
  lookup <- list(
    "aeioulnrst" = 1,
    "dg" = 2,
    "bcmp" = 3,
    "fhvwy" = 4,
    "k" = 5,
    "jx" = 8,
    "qz" = 10
  )
  
  scores <- vapply(chars, function(x) {
    item <- grep(x, names(lookup))
    lookup[[item]]
  }, numeric(1))

  sum(scores)
}