library(shiny)
wfarm <- base64enc::dataURI(file="www/UKwindfarm.png", mime="image/png")

#Define UI ----
ui <- fluidPage(
  titlePanel("title panel"),
  
  sidebarLayout(
    
    sidebarPanel("MySidebar",
                 h3("a button"),
                 actionButton(inputId="my_submitstatus",
                              label= "Submit"),
    ),
                 
    mainPanel(
      p("here's some guff about windfarms"),
      img(src=wfarm),
    ),
  )
)
    
    
  
      
      
      
      




#Define Server Logic ----
server <- function(input, output) {
  
}

#Run the app ----
shinyApp(ui= ui, server = server)