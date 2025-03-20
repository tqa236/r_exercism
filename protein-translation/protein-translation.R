translate <- function(bases) {
  if (bases == "") {
    return(NULL)
  }
  
  codon_map <- list(
    "AUG" = "Methionine",
    "UUU" = "Phenylalanine", "UUC" = "Phenylalanine",
    "UUA" = "Leucine", "UUG" = "Leucine",
    "UCU" = "Serine", "UCC" = "Serine", "UCA" = "Serine", "UCG" = "Serine",
    "UAU" = "Tyrosine", "UAC" = "Tyrosine",
    "UGU" = "Cysteine", "UGC" = "Cysteine",
    "UGG" = "Tryptophan",
    "UAA" = "STOP", "UAG" = "STOP", "UGA" = "STOP"
  )
  
  codons <- character(0)
  for (i in seq(1, nchar(bases), by = 3)) {
    if (i + 2 <= nchar(bases)) {
      codon <- substr(bases, i, i + 2)
      codons <- c(codons, codon)
    }
  }
  
  proteins <- character(0)
  for (codon in codons) {
    if (!codon %in% names(codon_map)) {
      stop("Invalid codon")
    }
    
    amino_acid <- codon_map[[codon]]
    
    if (amino_acid == "STOP") {
      break
    }
    
    proteins <- c(proteins, amino_acid)
  }
  
  if (nchar(bases) %% 3 != 0) {
    incomplete_start <- nchar(bases) - (nchar(bases) %% 3) + 1
    incomplete_part <- substr(bases, incomplete_start, nchar(bases))
    
    found_stop <- FALSE
    for (i in seq(1, length(codons))) {
      if (codon_map[[codons[i]]] == "STOP") {
        found_stop <- TRUE
        break
      }
    }
    
    if (!found_stop) {
      stop("Incomplete RNA sequence")
    }
  }
  
  if (length(proteins) == 0) {
    return(c())
  }
  
  return(proteins)
}