require(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title.
    headerPanel("Simulating Confidence Intervals: By Tyler Hunt")

      ,sidebarPanel(class="span10",
        HTML("<a href='http://psychoanalytix.com'> <img src='Logo_transparent_background.png'></a> ")
        ,wellPanel(
          helpText("This app is a demonstration of confidence intervals. The length of the bars are the size of the intervals. If the interval does not overlap with the population value (the black vertical line) then it is colored red to indicate a type 1 error.  Try increasing the sample size and see what happens")
          )
        ,wellPanel(
          numericInput(inputId = "nsamp"
                       ,label=strong("Sample Size")
                       ,value=100
                       ,min=5
                       ,max=10000)
          ,numericInput(inputId = "mean"
                       ,label = strong("Mean")
                       ,value = 0
                       ,min=1
                       ,max=10000000)
          
          ,numericInput(inputId = "variance"
                       ,label = strong("Variance")
                       ,value = 1
                       ,min=.01
                       ,max=100)
          
          ,numericInput(inputId = "conf.level"
                       ,label=strong("Confidence Level")
                       ,value=95
                       ,min=1
                       ,max=99)
          ,align="center")
        ,helpText("App created by", a(href="http://psychoanalytix.com", "PsychoAnalytix.com"))
        )
 
      # Show a summary of the dataset and an HTML table with the requested
      # number of observations. Note the use of the h4 function to provide
      # an additional header above each output section.
      ,mainPanel(
        plotOutput('conf.plot', width="90%", height="600px")
      )
    )
  )




