#' define_codons
#'
#' @param RNA_seq this parameter corresponds to the RNA sequence to translate
#' @param start the base pair where the definition of codons start (ORF)
#'
#' @returns this function returns a string composed by the RNA sequence divided three by three (codon definition)
#' @export
#'
define_codons <- function(RNA_seq, start = 1){
  RNA_seq_lenght <- nchar(RNA_seq)
  RNA_codons <- substring(RNA_seq,
                      first = seq(from = start, to = RNA_seq_lenght-3+1, by = 3),
                      last = seq(from = 3+start-1, to = RNA_seq_lenght, by = 3))
  return(RNA_codons)
}
