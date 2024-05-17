#' Package installation message
#'
#' To protect patient data, internet access is disabled in your Arcus Lab while your data is mounted.
#' @export
install.packages <- function(...) {
  message("You can't install packages with install.packages() from within an Arcus Lab.\nInstead, use the form.")
}

#' Package library message
#'
#' To protect patient data, internet access is disabled in your Arcus Lab while your data is mounted.
#' @export
library <- function(...) {

  check <- try(base::require(...))

  if (!check){
    message("\nIf you need to install a new package, you'll need to use the form.\nYou can't install packages with install.packages() from within an Arcus Lab.\n")
    base::library(...)
  }
}

#' Package require message
#'
#' To protect patient data, internet access is disabled in your Arcus Lab while your data is mounted.
#' @export
require <- function(...) {

  check <- try(base::require(...))

  if (!check){
    message("\nIf you need to install a new package, you'll need to use the form.\nYou can't install packages with install.packages() from within an Arcus Lab.\n")
    base::require(...)
  }
}

#' Test function
#'
#' To protect patient data, internet access is disabled in your Arcus Lab while your data is mounted.
#' @export
test_function <- function(...) {
  message("\nTest\n")
}
