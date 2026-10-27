dna <- function(sequence_length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_sequence <- paste0(nucleotides, collapse = "")
  return(dna_sequence)
}
