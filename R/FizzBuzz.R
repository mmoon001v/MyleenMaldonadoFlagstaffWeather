#' FizzBuzz Function
#'
#' A Fizz Buzz function takes an integer as an argument.
#'
#' @param n A real #
#' @return looped 1:n with fizz buzz pattern
#' @examples
#' FizzBuzz(76)
#' FizzBuzz(3)
#'
#' @export
#'


FizzBuzz <- function(n)
  {

  if(is.infinite(n)) {
     stop('input cannot be infinite')
  }
  if(n == 0) {
    stop('input cannot be zero')
  }
  if(n < 0) {
    stop('input cannot be negative')
  }

  x <- 1:n


  result <-ifelse(x %% 3 == 0 & x %% 5 == 0, "Fizz Buzz",
           ifelse(x %% 3 == 0, "Fizz",
                  ifelse(x %% 5 == 0, "Buzz", x)))

  print(result)
}
