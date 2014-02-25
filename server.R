
# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {

  output$conf.plot<-renderPlot(function(){

    generator(input$nsamp, input$mean, input$variance, (input$conf.level/100))

  })

})

