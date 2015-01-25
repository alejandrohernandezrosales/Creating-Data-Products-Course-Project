convert <- function(from,to,amount) euro.cross[from,to]*amount
shinyServer(
    function(input, output) {
        
        output$from_cur <- renderPrint({input$from_cur})
        output$to_cur <- renderPrint({input$to_cur})
        output$amount <- renderPrint({input$amount})
        output$conversion <- renderPrint({convert(input$from_cur, input$to_cur)})
        output$displaytext <- renderText({paste(input$amount, " ", input$from_cur,
                " converts to ", round(convert(input$from_cur, input$to_cur, input$amount),4),
                input$to_cur)})
    }
)