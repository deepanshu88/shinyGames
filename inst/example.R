library(shiny)
library(shinyGames)
library(shinyjs)

ui <- fluidPage(

  selectizeInput("gameid", "Select Game",
                        choices = c("corona", "dino"),
                        options = list(
                       placeholder = 'Please select an option below',
                       onInitialize = I('function() { this.setValue(""); }')
                     )),
  uiOutput("myout")

  )

server <- function(input, output, session) {

  output$myout <- renderUI({

    if(nchar(input$gameid) > 0) {
      game(type = input$gameid)
    }

  })

}

shinyApp(ui, server)
