# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2)){
    stop("2 ADN do not have equal length.")
  }
  else {
    strand1_split <- strsplit(strand1, "")[[1]]
    strand2_split <- strsplit(strand2, "")[[1]]
    sum(strand1_split != strand2_split)
  }
}
