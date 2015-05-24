library(shiny)

shinyUI(fluidPage(
        titlePanel("Predicting the Need for Breast Milk Education"),
        
        sidebarLayout(
                sidebarPanel(
                
                helpText("Select the client's level of 
                        agreement to the displayed question"),
                        
                selectInput("select", label = ("How strongly 
                                do you agree that baby formula 
                                is the same as or better than breast milk?"), 
                            choices = c("Strongly Agree", 
                                           "Agree", 
                                           "Do Not Agree",
                                           "Strongly Do Not Agree"), 
                                        selected = 1),
                submitButton("Submit"),
                br(),
                h6('(please note, this page is for fulfillment of the Coursera 
                                 Developing Data Products assignment only, and should not be 
                                used as a valid medical recommendation, the Supporting the 
                                 Promotion of Breastfeeding Program is fictional)')
                
                        ),
                
                mainPanel(
                        h3("Prediction Recommendation"),
                        h4("Your client answered, they"),
                        verbatimTextOutput("inputValue"),
                        h4("that baby formula is the same of better than breast milk."),
                        br(),
                        h4("Which resulted in a prediction recommendation to "),
                        verbatimTextOutput("prediction"),
                        br(),
                        h5("This prediction recommendation page is for use by Medical Care 
                                 Givers trained in the Supporting the Promotion of Breastfeeding 
                                 Program aimed at women in early pregnancy.")
                        
                        
                        )
        )
))