test_that("sequence is a string of correct length", {
  a <- dna(25)
  expect_true(is.character(a))
  expect_equal(nchar(a), 25)
})
