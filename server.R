source("/home/tylerhunt/ShinyApps/ConfidenceIntervals/generator.R")

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  output$conf.plot<-reactivePlot(function(){
    generator(input$nsamp, input$mean, input$variance, (input$conf.level/100))
  })
  
})

