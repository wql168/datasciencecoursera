# server.R

library(shiny)

require(stats); require(graphics)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  
  # carspeed = get(input$bins)
  
#   textout = reactive("The average stopping distance at the speed" 
#                      + as.character(input$bins)
#                      +" mph is: " 
#                      + as.character(format(round(mean(subset(cars, speed==input$bins)$dist),2)
#                                            , nsmall = 2)) 
#                      + ".")
  
#  if (input$bins %in% as.character(unique(cars[1]))) {
  
  dataout = reactive(rbind(subset(cars, speed == input$bins, row.names = FALSE), 
                 c("Avg Dist", format(round(mean(subset(cars, speed==input$bins)$dist),2)
                   , nsmall = 2))))
  
  # row.names(dataout) <- NULL
  
  # row.names(as.data.frame(dataout)) <- seq(nrow(as.data.frame(dataout))) 
  
  output$tableout <-  
    renderTable(dataout())
  
  
  # output$outputbin <- renderPrint({as.character(input$bins)})
  
  #output$outputbin = reactive(sub(" ","",paste(input$bins)))
  
  # output$classoutputbin = renderText(class(renderPrint({as.character(input$bins)})))

  output$textout <-  
    renderText(paste("The average stopping distance at the speed of",
                input$bins,
               " mph is: ",
                format(round(mean(subset(cars, speed==input$bins)$dist),2)
                                     , nsmall = 2),
               " feet.")) 

#  }

#else {
  output$textout2 = renderText("Sorry, data for this speed is not available.")}
#}
)