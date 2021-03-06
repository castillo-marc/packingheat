#' Correlation Matrix
#'
#' Returns correlation matrix visualization of numeric variables NBA set after filtering to given year.
#' @param year Year of interest
#' @keywords correlation matrix
#' @importFrom magrittr %>%
#' @export
#' @examples
#' numeric_matr(2015)
#' # should return a plot
numeric_matr <- function(year){
  filtered = dplyr::filter(nba, Year==year) %>% purrr::keep(is.numeric)
  return(corrplot::corrplot(cor(filtered), tl.cex=.5, type="upper"))
}
