#' DNA random sequence generation
#'
#' @param sequence_length length of a randomly generated DNA sequence
#'
#' @returns dna_sequence - a string of length sequence_length of "A", "T", "G", "C" sampled randomly with replacement
#' @export
#'

dna <- function(sequence_length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_sequence <- paste0(nucleotides, collapse = "")
  return(dna_sequence)
}

#' @examples
print(dna(32))
