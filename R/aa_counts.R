#' Unique aminoacid counts in sequence representation
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @param translation aminoacid sequence translated from codons
#'
#' @returns plot showing unique counts for each aminoacid present in sequence
#' @export
#'
aa_counts <- function(translation){
  aa_seq <- translation |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aa_seq, function(amino_acid) stringr::str_count(string = translation, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["translation"]] <- rownames(counts)

  aa_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = translation, y = Counts, fill = translation)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_plot)
}
