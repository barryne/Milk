library(shiny)
# server.R

milkEducation <- function(select) {
        if (select == "Strongly Agree") {
               print("Provide Full Program Breast Milk Education today, including Take Home Documentation, and arrange to review again at your client's next appointment before moving to the next phase of client care.") 
        } else if (select == "Agree") {
                print("Provide Full Program Breast Milk Education today, including Take Home Documentation and move to next phase of client care.")
        } else if (select == "Do Not Agree") {
                print("Provide Breast Milk Education Take Home Documentation today and move to the next phase of client care.")
        } else            
                print("Move to next phase of client care.")
        
}
       
shinyServer(function(input, output) {
        
        output$inputValue <- renderPrint({input$select })
        output$prediction <- renderPrint({milkEducation(input$select)})
        
})