acronym <- function(input) {
    words <- strsplit(toupper(input), "[^[:alnum:]]")
    paste(unlist(lapply(words, substring, 1, 1)), collapse="")
}