#' Codon to aminoacid translation
#'
#' @param RNA_codons Defined codon sequence
#'
#' @returns Aminoacid sequence
#' @export
#'
#' @examples
translate_to_aa <- function(RNA_codons){
  translation <- paste0(codons[RNA_codons], collapse = "")
  return(translation)
  }
