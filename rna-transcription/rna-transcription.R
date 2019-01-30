library(stringr)

to_rna <- function(dna) {
  rna <- str_replace_all(dna, c("C", "G"),c("G", "C"))
  rna
  str_replace_all(dna, c("C", "G"),c("G", "C"))[1]
}
to_rna("C")
