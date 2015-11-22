library(shiny) 
shinyUI(
     pageWithSidebar(
          # Application title
          headerPanel("Birthday Calculator"),
          
          # Side Panel
          sidebarPanel(
               dateInput('birthday', 'When is your Birthday? (DD-MM-YYYY)', value= Sys.Date(), format = 'dd-mm-yyyy') ,
               submitButton('Submit')
          ), 
          
          # Main Panel
          mainPanel(
               h2('Ever wondered what day of the week you were born on?'), 
               p("Well... now you can find out... and you don't even need any modular arithmetic!"),
               h4('You were born on:'),
               verbatimTextOutput('birthday'),
               p('which means that you were born on a:'),
               verbatimTextOutput("day"),
               p('Hooray! Now you can finally carry on with your life knowing what day of the week you were born.')
          )
          
     )   
)