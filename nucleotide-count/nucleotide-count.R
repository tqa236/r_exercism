nucleotide_count <- function(input) {
  if (!grepl ("^[ACGT]*$", input)) stop ("Invalid input")
  as.list(table(strsplit(paste ("ACTG", input, sep = ""), "")) - 1)
}