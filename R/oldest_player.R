#' Oldest player
#'
#' Returns oldest player during a given year. If multiple oldest players, returns the first one alphabetically by first name.
#' @param year Year of interest
#' @keywords oldest player
#' @importFrom dplyr filter
#' @importFrom dplyr arrange
#' @importFrom dplyr select
#' @export
#' @examples
#' oldest_player(2015)
#' "Andre Miller"
oldest_player <- function(year){
  filtered = dplyr::filter(nba, Year==year) %>% dplyr::arrange(desc(Age), Player) %>% dplyr::select(Player)
  return(filtered[1, ])
}
