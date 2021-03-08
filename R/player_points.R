#' Player points
#'
#' Returns the points scored by a given player (Michael Jordan by default) in a given year.
#' Prints a message if player wasn't active during given year.
#' @param year Year of interest
#' @param player default=Michael Jordan
#' @keywords points
#' @export
#' @examples
#' player_points(2015)
#' whatever the points are
player_points <- function(year, player="Michael Jordan*"){
  filtered = dplyr::filter(nba, Year==year, Player==player)
  if (dim(filtered)[1]== 0) {
    print(paste(player, "not active during", year))
  } else {
    return(filtered["PTS"])
  }
}
