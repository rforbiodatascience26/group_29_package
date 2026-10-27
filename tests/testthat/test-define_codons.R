test_that("RNA sequence is separated", {
  RNA_codons=define_codons(RNA_seq = "AUGGUA", start=1)
  expect_equal(RNA_codons, c("AUG", "GUA"))
})
