library(shiny)
wfarm <- base64enc::dataURI(file="www/UKwindfarm.png", mime="image/png")

#Define UI ----
ui <- fluidPage(
  titlePanel("title panel"),
  
  sidebarLayout(
    
    mainPanel(
      p("here's some guff about windfarms"),
      img(src=wfarm),),
    
    sidebarPanel("MySidebar",
                 h3("a button"),
                 actionButton(inputId="my_submitstatus",
                              label= "Submit"),
                 
                 checkboxGroupInput(inputId = "my_checkgroup", 
                                    h3("Checkbox group"), 
                                    choices = list("Woodland" = 1, 
                                                   "Grassland" = 2, 
                                                   "Urban" = 3),
                                    selected = 1),
                                  ),
                                )
                              )  
         

    
    
  
      
      
      
      




#Define Server Logic ----
server <- function(input, output) {
  
}

#Run the app ----
shinyApp(ui= ui, server = server)