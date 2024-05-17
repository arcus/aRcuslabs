#' Package installation message
#'
#' To protect patient data, internet access is disabled in your Arcus Lab while your data is mounted.
install.packages <- function(...) {
  message("You can't install packages with install.packages() from within an Arcus Lab.\nInstead, use the form.")
}

#' Package library message
#'
#' To protect patient data, internet access is disabled in your Arcus Lab while your data is mounted.
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
require <- function(...) {

  check <- try(base::require(...))

  if (!check){
    message("\nIf you need to install a new package, you'll need to use the form.\nYou can't install packages with install.packages() from within an Arcus Lab.\n")
    base::require(...)
  }
}
