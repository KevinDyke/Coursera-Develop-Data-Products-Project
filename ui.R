# The application must include the following:
  
#Some form of input (widget: textbox, radio button, checkbox, ...)
#Some operation on the ui input in sever.R
#Some reactive output displayed as a result of server calculations
#You must also include enough documentation so that a novice user could
#use your application.
#The documentation should be at the Shiny website itself.
#Do not post to an external link.
library(markdown)

shinyUI(navbarPage("CAR CHOOSER",
       tabPanel("Main Page",
                  sidebarPanel(
                      checkboxGroupInput("cyl", "Number Of Cylinders",
                                         c("4" = "4",
                                           "6" = "6",
                                           "8" = "8"),inline=TRUE),
                      sliderInput("disp", "Displacement:",min=70, max=475, value=70),
                      sliderInput("hp"  , "Horse Power:" ,min=50, max=335, value=50),
                      checkboxGroupInput("gear", "Number Of Gears",
                                         c("3" = "3",
                                           "4" = "4",
                                           "5" = "5"),inline=TRUE),
                    checkboxGroupInput("trans", "Transmission Type",
                                       c("Automatic" = "Automatic",
                                         "Manual" = "Manual"),inline=TRUE),
                    
                    actionButton("goButton", "Select Car Models!")
                ),
                mainPanel(
                    h4("Your choices of available cars are:"),
                    verbatimTextOutput("choices")
                )
                ),
       tabPanel("About",
               mainPanel(
                 includeMarkdown("about.md")
              ))
))
