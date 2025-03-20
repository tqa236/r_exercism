reverse <- function(text) {
  paste(rev(strsplit(text, "")[[1]]), collapse = "")
}