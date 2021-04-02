
<!-- README.md is generated from README.Rmd. Please edit that file -->

# shinyGames

<!-- badges: start -->

<!-- badges: end -->

In this shiny package we use [T-rex Runner](https://github.com/wayou/t-rex-runner) Game. It has two variants - `corona` and `dinosaur` which you can add in your shiny app.

## Installation

You can install the released version of shinyGames from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("deepanshu88/shinyGames")
```

## Example

This is a basic example which shows you how to run game:

``` r
library(shiny)
library(shinyGames)
ui <- fluidPage( game(type = "corona") )
server <- function(input, output, session) { }
shinyApp(ui, server)
```

## Toggle between corona and dinosaur games

``` r
library(shiny)
library(shinyGames)

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
```
