# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2)){
    stop("2 ADN do not have equal length.")
  }
  else if ((nchar(strand1) == 0) || (nchar(strand2) == 0)){
    0
  }
  else {
    strand1_split <- strsplit(strand1, "")[[1]]
    strand2_split <- strsplit(strand2, "")[[1]]
    count = 0
    for (i in 1:nchar(strand1)) {
      if (strand1_split[i] != strand2_split[i]){
        count = count + 1
      }
    }
    count    
  }

}
