# ui.R

library(shiny)

require(stats); require(graphics)
# listspeed <- as.list(as.character(as.integer(unique(cars$speed))))

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(h2("Speed and Stopping Distances of Cars") # ,
            #  h5("A Developing Data Products Course Project")
            ),
  
  
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      
      h3("Select A Speed:"),
      
      h5("This App returns stopping distance (ft) for cars at a specific speed (mph):"),
      
      h5(" "),
      
      sliderInput("bins",
                  "Speed of car:",
                  min = 4,
                  max = 25,
                  value = 4,
                  round=TRUE),
      h5(""),
      h5("Note: this application uses dataset cars which gives the speed of cars and the distances taken to stop."),
      h5(""),         
      h5("For more information about this dataset, refer to: http://www.inside-r.org/r-doc/datasets/cars.")
    ),
    
    # Show a plot of the generated distribution
    #mainPanel(
      
    #      if (as.list(as.character(verbatimTextOutput("outputbin"))) %in% listspeed) {
      
        mainPanel(
          
          h3("Stopping Distance Data Table:"), h2(""),
      
          tableOutput("tableout"), h2(""),
      
          h3("Result:"), h2(""),
      
          h4(textOutput("textout"))) #}
      
#       else { mainPanel(h4("The speed you entered is:"), 
#                        as.character(verbatimTextOutput("outputbin")),
#                        h4(textOutput("classoutputbin")),
#                        h4(textOutput("textout2"))
#       )}
    )
  )
)