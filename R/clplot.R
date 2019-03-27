#' clplot: Plotting tools for the House of Commons Library
#'
#' The clplot package provides themes and tools for making plots in the House
#' of Commons Library style.
#'
#' @docType package
#' @name clplot
#' @importFrom ggplot2 %+replace%
#' @importFrom magrittr %>%
#' @importFrom rlang .data
NULL

# Tell R CMD check about new operators
if(getRversion() >= "2.15.1") {
    utils::globalVariables(c(".", ":="))
}
