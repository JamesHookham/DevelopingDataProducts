library(shiny) 

# day<-weekdays(as.Date(birthday,'dd-mm-yyyy'))

shinyServer(
     function(input, output) {
          
          output$birthday <- renderPrint(as.Date({input$birthday}, 'dd-mm-yyyy'))
          output$day <- renderPrint(weekdays(as.Date(input$birthday,'dd-mm-yyyy')))
     } 
)