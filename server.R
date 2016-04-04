library(shiny)

mt <- subset( mtcars, select = -c( drat, wt, qsec, vs, carb) )
mt$am   <- factor(mt$am,labels=c("Automatic","Manual"))

a = function(cyl,disp,hp,gear,trans){
  
 if (is.null(cyl) || is.null(gear) || is.null(trans))
      st <- "Please enter more data choices" 
  else{  
      st <- mt[(mt$cyl %in% cyl) & (mt$gear %in% gear) & (mt$am %in% trans)
              & (mt$hp <= hp) & (mt$disp <= disp),] 
      if (nrow(st) == 0)
         st <- "Sorry there are zero matches for your data"
  }         
  st
}

shinyServer(
  function(input, output) {
    output$cyl = renderPrint({input$cyl})
    output$disp = renderPrint({input$disp})
    output$hp = renderPrint({input$hp})
    output$gear = renderPrint({input$gear})
    output$trans = renderPrint({input$trans})
    
    output$choices <- renderPrint({
      if (input$goButton == 0)
        return()

      
      isolate(a(cyl = input$cyl,
                disp = input$disp,
                hp = input$hp,
                gear = input$gear,
                trans = input$trans))
    })
  }
)