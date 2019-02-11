replace <- function(strand,rna_map){
  if (!(strand %in% c("C", "G", "A", "T"))) throws("Invalid ADN")
  rna_map[strand]
}

to_rna <- function(dna) {
  rna_map <- list("C" = "G", "G" = "C", "T" = "A", "A" = "U")
  dnal <- unlist(strsplit(dna, "")[[1]])
  paste(sapply(dnal, replace, rna_map = rna_map), collapse='')
}
