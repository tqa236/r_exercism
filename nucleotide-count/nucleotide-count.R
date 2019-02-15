nucleotide_count <- function(input) {
  nucleotides <- strsplit(input, "")[[1]]
  frequency_table <- table(nucleotides)
  occurences <- as.list(frequency_table)
  names(occurences) <- names(frequency_table)
}
