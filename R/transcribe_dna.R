#' Transcribe DNA into RNA
#'
#' @param dna DNA string
#'
#' @returns transcribed RNA string
#' @export
#'
#' @examples
transcribe_dna <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
