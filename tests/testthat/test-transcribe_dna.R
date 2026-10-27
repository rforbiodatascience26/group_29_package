test_that("substitution works", {
  expect_equal(
    transcribe_dna("GATGGAACTTGACTACGTAAATT"),
               "GAUGGAACUUGACUACGUAAAUU")
})

test_that("empty DNA string returns empty RNA string", {
  expect_equal(
    transcribe_dna(""), ""
  )
})


