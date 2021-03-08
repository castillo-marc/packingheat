#' Correlation Matrix
#'
#' Returns correlation matrix visualization of numeric variables NBA set after filtering to given year.
#' @param year Year of interest
#' @keywords correlation matrix
#' @importFrom magrittr %>%
#' @export
#' @examples
#' numeric_matr(2015)
numeric_matr <- function(year){
  filtered = dplyr::filter(nba, Year==year) %>% purrr::keep(is.numeric)
  return(corrplot::corrplot(cor(filtered)))
}
