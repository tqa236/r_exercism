library(stringr)

normalized_plaintext <- function(input) {
  tolower(gsub("[^[:alnum:]]", "", input))
}

plaintext_segments <- function(input) {
  if (input == "") return("")
  normalized_input <- normalized_plaintext(input)
  chunk_length <- ceiling(sqrt(nchar(normalized_input)))
  strsplit(normalized_input,
           paste0("(?<=.{", chunk_length, "})"), perl = TRUE)[[1]]
}

encoded <- function(input, pad = FALSE) {
  segmented_text <- plaintext_segments(input)
  pad_char <- ""
  if (pad){
    segmented_text <- str_pad(segmented_text, nchar(segmented_text[1]),
                              side = c("right"), pad = " ")
    pad_char <- " "
  }
  paste(sapply(1 : nchar(segmented_text[1]),
               function(x){
                 paste(substr(segmented_text, start = x, stop = x),
                                 collapse = "")
                 }
               ), collapse = pad_char)
}

ciphertext <- function(input) {
  if (input == "") return("")
  encoded(input, TRUE)
}