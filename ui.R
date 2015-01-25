library(shiny)
shinyUI(
    pageWithSidebar(
        headerPanel("Legacy Currency Converter"),
        sidebarPanel(
            selectInput("from_cur", label=h5("Select the currency to convert from:"),
                choices=list("Austrian Schilling"="ATS", 
                             "Belgian Franc"="BEF", 
                             "German Mark"="DEM", 
                             "Spanish Peseta"="ESP", 
                             "Finnish Markka"="FIM", 
                             "French Franc"="FRF", 
                             "Irish Punt"="IEP", 
                             "Italian Lira"="ITL", 
                             "Luxembourg Franc"="LUF", 
                             "Dutch Guilder" ="NLG", 
                             "Portuguese Escudo"="PTE"), selected=1),
            selectInput("to_cur", label=h5("Select the currency you want to convert to:"),
                choices=list("Austrian Schilling"="ATS", 
                             "Belgian Franc"="BEF", 
                             "German Mark"="DEM", 
                             "Spanish Peseta"="ESP", 
                             "Finnish Markka"="FIM", 
                             "French Franc"="FRF", 
                             "Irish Punt"="IEP", 
                             "Italian Lira"="ITL", 
                             "Luxembourg Franc"="LUF", 
                             "Dutch Guilder" ="NLG", 
                             "Portuguese Escudo"="PTE"), selected=1),
            numericInput('amount', label=h5('Enter the amount to convert:'), 1),
            submitButton('Click here to convert!')
        ),
        mainPanel(
            h3(textOutput("displaytext"))
            
        )
    )
)