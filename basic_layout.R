library(shiny)
wfarm <- base64enc::dataURI(file="www/UKwindfarm.png", mime="image/png")

#Define UI ----
ui <- fluidPage(
  titlePanel("title panel"),
  
  sidebarLayout(
    sidebarPanel("sidebar panel"),
    mainPanel(
      p("Premm Premm Premm", strong("BIG OL PREMM"), "BETWEEN DIFFERENT", em("interest groups"),
        "other shucking musers."),
      img(src=wfarm))
  )
)
      
      
      
      




#Define Server Logic ----
server <- function(input, output) {
  
}

#Run the app ----
shinyApp(ui= ui, server = server)