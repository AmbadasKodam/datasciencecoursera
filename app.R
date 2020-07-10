#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(htmlwidgets)

ui <- fluidPage(
  fluidRow(
    column(2,
           "FREQUENCY_CARRIER",
           fluidRow(
             column(12,
                    "PARAMETER / FA_INDEX")
           ),
           fluidRow(
             column(6,
                    "EUTRA-FA"),
             column(6,
                    "PRIORITY")
           )
    ),
    column(2,
           "2300_C1",
           fluidRow(
             column(3,
                    "1"),
             column(3,
                    "2"),
             column(3,
                    "3"),
             column(3,
                    "4")
           ),
           fluidRow(
             column(4,
                    selectInput("SI1", "", choices = c("",0:20),width = "275px"),
                    column(4,
                           selectInput("SI2","",choices = c("",0:20),width = "275px"))
             )
           )
    ),
    column(2,
           "2300_C2",
           fluidRow(
             column(3,
                    "1"),
             column(3,
                    "2"),
             column(3,
                    "3"),
             column(3,
                    "4")
           )
    ),
    column(2,
           "1800",
           fluidRow(
             column(3,
                    "1"),
             column(3,
                    "2"),
             column(3,
                    "3"),
             column(3,
                    "4")
           )
    ),
    column(2,
           "850_C1",
           fluidRow(
             column(3,
                    "1"),
             column(3,
                    "2"),
             column(3,
                    "3"),
             column(3,
                    "4")
           )
    ),
    column(2,
           "850_C2",
           fluidRow(
             column(3,
                    "1"),
             column(3,
                    "2"),
             column(3,
                    "3"),
             column(3,
                    "4")
           )
    )
  )
)

server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)


