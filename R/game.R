#' Play Game in Shiny App
#'
#' @param type Either "corona" or "dino". Default : "corona"
#'
#' @return
#' @export
#'
#' @examples
#' library(shiny)
#' library(shinyGames)
#' ui <- fluidPage( game(type = "corona") )
#' server <- function(input, output, session) { }
#' shinyApp(ui, server)

game <- function(type = "corona") {

  if(type == "corona") {

    htmltools::includeHTML(paste0(system.file("assets/corona", package = "shinyGames"), "/game2.html"))

  } else {

    htmltools::includeHTML(paste0(system.file("assets/dino", package = "shinyGames"), "/game.html"))

  }

}
