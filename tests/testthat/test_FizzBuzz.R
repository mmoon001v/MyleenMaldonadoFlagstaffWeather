
test_that('FizzBuzz testing...', {
  expect_equal(length(FizzBuzz(15)), 15)
})

test_that('Negative input', {
  expect_error(FizzBuzz(-2))
})

test_that('Infinite input', {
  expect_error(FizzBuzz(Inf))
})

test_that('Zero input', {
  expect_error(FizzBuzz(0))
})
