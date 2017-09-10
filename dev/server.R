
library(shiny)
shinyServer(function(input, output) {
    colw <<- 12
  output$myname <- renderText(input$name)
  output$myorg <- renderText(input$org)
  output$myteam <- renderText(input$team)
  output$mytel <- renderText(input$tel)
  output$myemail <- renderText(input$email)
  #input$img
}
)
