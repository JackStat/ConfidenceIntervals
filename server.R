
# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {

  thePlot <- eventReactive(input$simulate | input$simulate == 0, {
    generator(input$nsamp, input$mean, input$variance, (input$conf.level/100))
  })
  
  output$conf.plot <- renderPlot({
    thePlot()
  })

})

