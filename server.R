library(shiny)
library(RSQLite)

shinyServer(function(input, output, session) {
  
  # id1 <- function(x){
  #   square <- x*x
  #   print("Function running......!!")
  #   return(square)
  # }
  # 
  # print(id1(10))
  
  tbl_nme = 'chem'
  add <- function(){
    con <- dbConnect(SQLite(), dbname='TryIt2.sqlite')
    print("Function running....")
    sqcmd <- paste("insert into",tbl_nme , "values ( 9,'2','2','3')")
    print(sqcmd)
    pull <- dbSendQuery(conn = con, sqcmd )
    df1 <- fetch(pull, n=-1)
    print(df1)
  }
  
  # add()
  
  observe({
    con <- dbConnect(SQLite(), dbname='TryIt2.sqlite')
    print("hi....")
    sqlcmd <- paste("SELECT id FROM chem")
    pull <- dbSendQuery(conn = con, sqlcmd ) 
    dataf <- fetch(pull, n=-1)
    print(dataf)
    print("******************")
    updateSelectInput(session, "select1","Select Id",choices = dataf)
  })
  
  
  observe({
    con <- dbConnect(SQLite(), dbname='TryIt2.sqlite')
    print("hi....")
    sqlcmd1 <- paste("SELECT val1 FROM chem WHERE id==",input$select1,sep = "")
    pull <- dbSendQuery(conn = con, sqlcmd1 ) 
    df1 <- fetch(pull, n=-1)
    
    sqlcmd2 <- paste("SELECT val2 FROM chem WHERE id==",input$select1,sep = "")
    pull <- dbSendQuery(conn = con, sqlcmd2 ) 
    print('value of df2')
    df2 <- fetch(pull, n=-1)
    print(df2)
    
    sqlcmd3 <- paste("SELECT val3 FROM chem WHERE id==",input$select1,sep = "")
    pull <- dbSendQuery(conn = con, sqlcmd3 ) 
    df3 <- fetch(pull, n=-1)
    
    act10 <- reactive({ ifelse (df1 == 0,"active","" ) })
    act11 <- reactive({ ifelse (df1 == 1,"active","" ) })
    act12 <- reactive({ ifelse (df1 == 2,"active","" ) })
    act13 <- reactive({ ifelse (df1== 3,"active","" ) })
    act14 <- reactive({ ifelse (df1== 4,"active","" ) })
    output$Deep_Boxes1 = renderUI({h4("# of Deep Boxes")})
    output$deep0 = renderUI({ bsButton("deep0","0",size = "medium",type = "toggle") })
    output$deep00 = renderUI({ bsButton("deep00","0",size = "medium",type = "toggle")})
    output$deep1 = renderUI({ bsButton("deep1","1",size = "medium",type = "toggle",class = act11()) })
    output$deep01 = renderUI({ bsButton("deep01","1",size = "medium",type = "toggle") })
    output$deep2 = renderUI({ bsButton("deep2","2",size = "medium",type = "toggle",class = act12()) })
    output$deep02 = renderUI({ bsButton("deep02","2",size = "medium",type = "toggle") })
    output$deep3 = renderUI({ bsButton("deep3","3",size = "medium",type = "toggle",class= act13()) })
    output$deep03 = renderUI({ bsButton("deep03","3",size = "medium",type = "toggle") })
    output$deep4 = renderUI({ bsButton("deep4","4",size = "medium",type = "toggle", class= act14()) })
    output$deep04 = renderUI({ bsButton("deep04","4",size = "medium",type = "toggle") })
    output$deeptextbox = renderUI({textInput("deepboxid", label = '')})
    output$deeptextbox1 = renderUI({textInput("deepboxid1", label = '')})
    
    
    
    
    act0 <- reactive({ ifelse (df2 == 0,"active","" ) })
    act1 <- reactive({ ifelse (df2 == 1,"active","" ) })
    act2 <- reactive({ ifelse (df2 == 2,"active","" ) })
    act3 <- reactive({ ifelse (df2== 3,"active","" ) })
    act4 <- reactive({ ifelse (df2== 4,"active","" ) })
    output$med0 = renderUI({ bsButton("med0","0",size = "medium",type = "toggle",class = act0()) })
    output$med00 = renderUI({ bsButton("med00","0",size = "medium",type = "toggle") })
    output$med1 = renderUI({ bsButton("med1","1",size = "medium",type = "toggle",class = act1()) })
    output$med01 = renderUI({ bsButton("med01","1",size = "medium",type = "toggle") })
    output$med2 = renderUI({ bsButton("med2","2",size = "medium",type = "toggle",class = act2()) })
    output$med02 = renderUI({ bsButton("med02","2",size = "medium",type = "toggle") })
    output$med3 = renderUI({ bsButton("med3","3",size = "medium",type = "toggle", class = act3()) })
    output$med03 = renderUI({ bsButton("med03","3",size = "medium",type = "toggle") })
    output$med4 = renderUI({ bsButton("med4","4",size = "medium",type = "toggle", class = act4()) })
    output$med04 = renderUI({ bsButton("med04","4",size = "medium",type = "toggle") })
    output$medtextbox = renderUI({textInput("medboxid", label = '')})
    output$medtextbox1 = renderUI({textInput("medboxid1", label = '')})
    
    
    
    act20 <- reactive({ ifelse (df3 == 0,"active","" ) })
    act21 <- reactive({ ifelse (df3 == 1,"active","" ) })
    act22 <- reactive({ ifelse (df3 == 2,"active","" ) })
    act23 <- reactive({ ifelse (df3 == 3,"active","" ) })
    act24 <- reactive({ ifelse (df3 == 4,"active","" ) })
    output$frame_Boxes1 = renderUI({h4("Frames of bees in Mediums")})
    output$frameM10 = renderUI({ bsButton("frameM10","10",size = "medium",type = "toggle") })
    output$frameM20 = renderUI({ bsButton("frameM20","20",size = "medium",type = "toggle") })
    output$frameM30 = renderUI({ bsButton("frameM30","30",size = "medium",type = "toggle") })
    output$frameM1 = renderUI({ bsButton("frameM1","1",size = "medium",type = "toggle", class=act21()) })
    output$frameM2 = renderUI({ bsButton("frameM2","2",size = "medium",type = "toggle",class = act22()) })
    output$frameM3 = renderUI({ bsButton("frameM3","3",size = "medium",type = "toggle", class=act23()) })
    output$frameM4 = renderUI({ bsButton("frameM4","4",size = "medium",type = "toggle", class=act24()) })
    output$frameM5 = renderUI({ bsButton("frameM5","5",size = "medium",type = "toggle") })
    output$frameM6 = renderUI({ bsButton("frameM6","6",size = "medium",type = "toggle") })
    output$frameM7 = renderUI({ bsButton("frameM7","7",size = "medium",type = "toggle") })
    output$frameM8 = renderUI({ bsButton("frameM8","8",size = "medium",type = "toggle") })
    output$frameM9 = renderUI({ bsButton("frameM9","9",size = "medium",type = "toggle") })
    
    output$frameM010 = renderUI({ bsButton("frameM010","10",size = "medium",type = "toggle") })
    output$frameM020 = renderUI({ bsButton("frameM020","20",size = "medium",type = "toggle") })
    output$frameM030 = renderUI({ bsButton("frameM030","30",size = "medium",type = "toggle") })
    output$frameM01 = renderUI({ bsButton("frameM01","1",size = "medium",type = "toggle") })
    output$frameM02 = renderUI({ bsButton("frameM02","2",size = "medium",type = "toggle") })
    output$frameM03 = renderUI({ bsButton("frameM03","3",size = "medium",type = "toggle") })
    output$frameM04 = renderUI({ bsButton("frameM04","4",size = "medium",type = "toggle") })
    output$frameM05 = renderUI({ bsButton("frameM05","5",size = "medium",type = "toggle") })
    output$frameM06 = renderUI({ bsButton("frameM06","6",size = "medium",type = "toggle") })
    output$frameM07 = renderUI({ bsButton("frameM07","7",size = "medium",type = "toggle") })
    output$frameM08 = renderUI({ bsButton("frameM08","8",size = "medium",type = "toggle") })
    output$frameM09 = renderUI({ bsButton("frameM09","9",size = "medium",type = "toggle") })
    output$frameDClear = renderUI({ bsButton("frameDClear", "Clear",size="medium", type="action") })
    output$frametextbox = renderUI({textInput("framesboxid", label = '')})
    output$frametextbox1 = renderUI({textInput("framesboxid1", label = '')})
  })
  act10 <- reactive({ ifelse (input$select1 == 0,"active","" ) })
  act11 <- reactive({ ifelse (input$select1 == 1,"active","" ) })
  act12 <- reactive({ ifelse (input$select1 == 2,"active","" ) })
  act13 <- reactive({ ifelse (input$select1 == 3,"active","" ) })
  act14 <- reactive({ ifelse (input$select1 == 4,"active","" ) })
  output$Queenstatustextbox = renderUI({textInput("Queenstatusboxid", label = '')})
  output$Queenstatustextbox1 = renderUI({textInput("Queenstatusboxid1", label = '')})
  
  # if(input$save)
  
  
  
  observeEvent(input$deadYes, {(
    if (input$deadYes){
      updateButton(session, "deadNo", value=FALSE)
    }
  )}
  )
  
  observeEvent(input$deadNo, {(
    if (input$deadNo){
      updateButton(session, "deadYes", value=FALSE)
    }
  )}
  )
  
  
  observeEvent(input$deep0, {(
    {
      if (input$deep0==TRUE & input$select1!=3 ){
        updateButton(session, "deep1", value=FALSE)
        updateButton(session, "deep2", value=FALSE)
        updateButton(session, "deep3", value=FALSE)
        updateButton(session, "deep4", value=FALSE)
        updateButton(session, "deep5", value=FALSE)
        updateTextInput(session,inputId = "deepboxid1",
                        value = paste("0") )
      }
    }
  )}
  )
  
  
  observeEvent(input$deep1, {(
    {
      if (input$deep1==TRUE & input$select1!=3 ){
        updateButton(session, "deep0", value=FALSE)
        updateButton(session, "deep2", value=FALSE)
        updateButton(session, "deep3", value=FALSE)
        updateButton(session, "deep4", value=FALSE)
        updateButton(session, "deep5", value=FALSE)
        updateTextInput(session,inputId = "deepboxid1",
                        value = paste("1") )
      }
    }
  )}
  )
  observeEvent(input$deep2, {(
    {
      if (input$deep2==TRUE & input$select1!=3 ){
        updateButton(session, "deep1", value=FALSE)
        updateButton(session, "deep0", value=FALSE)
        updateButton(session, "deep3", value=FALSE)
        updateButton(session, "deep4", value=FALSE)
        updateButton(session, "deep5", value=FALSE)
        updateTextInput(session,inputId = "deepboxid1",
                        value = paste("2") )
      }
    }
  )}
  )
  
  observeEvent(input$deep3, {(
    {
      if (input$deep3==TRUE & input$select1!=3 ){
        updateButton(session, "deep1", value=FALSE)
        updateButton(session, "deep2", value=FALSE)
        updateButton(session, "deep0", value=FALSE)
        updateButton(session, "deep4", value=FALSE)
        updateButton(session, "deep5", value=FALSE)
        updateTextInput(session,inputId = "deepboxid1",
                        value = paste("3") )
      }
    }
  )}
  )
  
  observeEvent(input$deep4, {(
    {
      if (input$deep4==TRUE & input$select1!=3 ){
        updateButton(session, "deep1", value=FALSE)
        updateButton(session, "deep2", value=FALSE)
        updateButton(session, "deep3", value=FALSE)
        updateButton(session, "deep0", value=FALSE)
        updateButton(session, "deep5", value=FALSE)
        updateTextInput(session,inputId = "deepboxid1",
                        value = paste("4") )
      }
    }
  )}
  )
  
  observeEvent(input$deep5, {(
    {
      if (input$deep5==TRUE & input$select1!=3 ){
        updateButton(session, "deep1", value=FALSE)
        updateButton(session, "deep2", value=FALSE)
        updateButton(session, "deep3", value=FALSE)
        updateButton(session, "deep4", value=FALSE)
        updateButton(session, "deep0", value=FALSE)
        updateTextInput(session,inputId = "deepboxid1",
                        value = paste("5") )
      }
    }
  )}
  )
  
  observeEvent(input$med0, {(
    {
      if (input$med0==TRUE & input$select1!=3 ){
        updateButton(session, "med1", value=FALSE)
        updateButton(session, "med2", value=FALSE)
        updateButton(session, "med3", value=FALSE)
        updateButton(session, "med4", value=FALSE)
        updateButton(session, "med5", value=FALSE)
        updateTextInput(session, inputId = "medboxid1",
                        value = paste("0"))
      }
    }
  )}
  )
  
  
  observeEvent(input$med1, {(
    {
      if (input$med1==TRUE & input$select1!=3 ){
        updateButton(session, "med0", value=FALSE)
        updateButton(session, "med2", value=FALSE)
        updateButton(session, "med3", value=FALSE)
        updateButton(session, "med4", value=FALSE)
        updateButton(session, "med5", value=FALSE)
        updateTextInput(session, inputId = "medboxid1",
                        value = paste("1"))
      }
    }
  )}
  )
  observeEvent(input$med2, {(
    {
      if (input$med2==TRUE & input$select1!=3 ){
        updateButton(session, "med1", value=FALSE)
        updateButton(session, "med0", value=FALSE)
        updateButton(session, "med3", value=FALSE)
        updateButton(session, "med4", value=FALSE)
        updateButton(session, "med5", value=FALSE)
        updateTextInput(session, inputId = "medboxid1",
                        value = paste("2"))
      }
    }
  )}
  )
  
  observeEvent(input$med3, {(
    {
      if (input$med3==TRUE & input$select1!=3 ){
        updateButton(session, "med1", value=FALSE)
        updateButton(session, "med2", value=FALSE)
        updateButton(session, "med0", value=FALSE)
        updateButton(session, "med4", value=FALSE)
        updateButton(session, "med5", value=FALSE)
        updateTextInput(session, inputId = "medboxid1",
                        value = paste("3"))
      }
    }
  )}
  )
  
  observeEvent(input$med4, {(
    {
      if (input$med4==TRUE & input$select1!=3 ){
        updateButton(session, "med1", value=FALSE)
        updateButton(session, "med2", value=FALSE)
        updateButton(session, "med3", value=FALSE)
        updateButton(session, "med0", value=FALSE)
        updateButton(session, "med5", value=FALSE)
        updateTextInput(session,inputId = "medboxid1",
                        value = paste("4") )
      }
    }
  )}
  )
  
  observeEvent(input$med5, {(
    {
      if (input$med5==TRUE & input$select1!=3 ){
        updateButton(session, "med1", value=FALSE)
        updateButton(session, "med2", value=FALSE)
        updateButton(session, "med3", value=FALSE)
        updateButton(session, "med4", value=FALSE)
        updateButton(session, "med0", value=FALSE)
        updateTextInput(session,inputId = "medboxid1",
                        value = paste("5") )
      }
    }
  )}
  )
  
  observeEvent(input$frameDClear,{(
    { 
      updateNumericInput(session, "frameDeep", value=0)
    }
  )}
  )
  
  observeEvent(input$frameD10,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=10+valueD)
      # updateTextInput(session, inputId = "framesboxid1",
      #                 value = paste("10"))
    }
  )}
  )
  observeEvent(input$frameD20,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=20+valueD)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("20") )
    }
  )}
  )
  observeEvent(input$frameD30,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=30+valueD)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("30") )
    }
  )}
  )
  observeEvent(input$frameD1,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+1)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("1") )
    }
  )}
  )
  observeEvent(input$frameD2,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+2)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("2") )
    }
  )}
  )
  observeEvent(input$frameD3,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+3)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("3") )
    }
  )}
  )
  observeEvent(input$frameD4,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+4)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("4") )
    }
  )}
  )
  observeEvent(input$frameD5,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+5)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("5") )
    }
  )}
  )
  observeEvent(input$frameD6,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+6)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("6") )
    }
  )}
  )
  observeEvent(input$frameD7,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+7)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("7") )
    }
  )}
  )
  observeEvent(input$frameD8,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+8)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("8") )
    }
  )}
  )
  observeEvent(input$frameD9,{(
    { 
      valueD<- input$frameDeep
      updateNumericInput(session, "frameDeep", value=valueD+9)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("9") )
    }
  )}
  )
  observeEvent(input$frameMClear,{(
    { 
      updateNumericInput(session, "frameMedium", value=0)
    }
  )}
  )
  
  observeEvent(input$frameM10,{(
    { 
      # updateButton(session, "frameM20", value=FALSE)
      # updateButton(session, "frameM30", value=FALSE)
      # updateButton(session, "frameM1", value=FALSE)
      # updateButton(session, "frameM2", value=FALSE)
      # updateButton(session, "frameM3", value=FALSE)
      # updateButton(session, "frameM4", value=FALSE)
      # updateButton(session, "frameM5", value=FALSE)
      # updateButton(session, "frameM6", value=FALSE)
      # updateButton(session, "frameM7", value=FALSE)
      # updateButton(session, "frameM8", value=FALSE)
      # updateButton(session, "frameM9", value=FALSE)
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=10+valueM)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("10") )
      if (input$frameM10==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("10") )
      }
      
    }
  )}
  )
  
  observeEvent(input$frameM20,{(
    { 
      # updateButton(session, "frameM10", value=FALSE)
      # updateButton(session, "frameM30", value=FALSE)
      # updateButton(session, "frameM1", value=FALSE)
      # updateButton(session, "frameM2", value=FALSE)
      # updateButton(session, "frameM3", value=FALSE)
      # updateButton(session, "frameM4", value=FALSE)
      # updateButton(session, "frameM5", value=FALSE)
      # updateButton(session, "frameM6", value=FALSE)
      # updateButton(session, "frameM7", value=FALSE)
      # updateButton(session, "frameM8", value=FALSE)
      # updateButton(session, "frameM9", value=FALSE)
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=20+valueM)
      if (input$frameM20==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("20") )
      }
    }
  )}
  )
  observeEvent(input$frameM30,{(
    { 
      # updateButton(session, "frameM10", value=FALSE)
      # updateButton(session, "frameM20", value=FALSE)
      # updateButton(session, "frameM1", value=FALSE)
      # updateButton(session, "frameM2", value=FALSE)
      # updateButton(session, "frameM3", value=FALSE)
      # updateButton(session, "frameM4", value=FALSE)
      # updateButton(session, "frameM5", value=FALSE)
      # updateButton(session, "frameM6", value=FALSE)
      # updateButton(session, "frameM7", value=FALSE)
      # updateButton(session, "frameM8", value=FALSE)
      # updateButton(session, "frameM9", value=FALSE)
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=30+valueM)
      if (input$frameM30==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("30") )
      }
      
    }
  )}
  )
  observeEvent(input$frameM1,{(
    { 
      # updateButton(session, "frameM20", value=FALSE)
      # updateButton(session, "frameM30", value=FALSE)
      # updateButton(session, "frameM10", value=FALSE)
      # updateButton(session, "frameM2", value=FALSE)
      # updateButton(session, "frameM3", value=FALSE)
      # updateButton(session, "frameM4", value=FALSE)
      # updateButton(session, "frameM5", value=FALSE)
      # updateButton(session, "frameM6", value=FALSE)
      # updateButton(session, "frameM7", value=FALSE)
      # updateButton(session, "frameM8", value=FALSE)
      # updateButton(session, "frameM9", value=FALSE)
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+1)
      if (input$frameM1==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("1") )
      }
    }
  )}
  )
  observeEvent(input$frameM2,{(
    { 
      # updateButton(session, "frameM20", value=FALSE)
      # updateButton(session, "frameM30", value=FALSE)
      # updateButton(session, "frameM10", value=FALSE)
      # updateButton(session, "frameM1", value=FALSE)
      # updateButton(session, "frameM3", value=FALSE)
      # updateButton(session, "frameM4", value=FALSE)
      # updateButton(session, "frameM5", value=FALSE)
      # updateButton(session, "frameM6", value=FALSE)
      # updateButton(session, "frameM7", value=FALSE)
      # updateButton(session, "frameM8", value=FALSE)
      # updateButton(session, "frameM9", value=FALSE)
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+2)
      if (input$frameM2==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("2") )
      }
    }
  )}
  )
  observeEvent(input$frameM3,{(
    { 
      # updateButton(session, "frameM20", value=FALSE)
      # updateButton(session, "frameM30", value=FALSE)
      # updateButton(session, "frameM1", value=FALSE)
      # updateButton(session, "frameM2", value=FALSE)
      # updateButton(session, "frameM10", value=FALSE)
      # updateButton(session, "frameM4", value=FALSE)
      # updateButton(session, "frameM5", value=FALSE)
      # updateButton(session, "frameM6", value=FALSE)
      # updateButton(session, "frameM7", value=FALSE)
      # updateButton(session, "frameM8", value=FALSE)
      # updateButton(session, "frameM9", value=FALSE)
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+3)
      if (input$frameM3==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("3") )
      }
      
    }
  )}
  )
  observeEvent(input$frameM4,{(
    { 
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+4)
      if (input$frameM4==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("4") )
      }
      
      
    }
  )}
  )
  observeEvent(input$frameM5,{(
    { 
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+5)
      if (input$frameM5==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("5") )
      }
    }
  )}
  )
  observeEvent(input$frameM6,{(
    { 
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+6)
      if (input$frameM6==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("6") )
      }
    }
  )}
  )
  observeEvent(input$frameM7,{(
    { 
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+7)
      if (input$frameM7==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("7") )
      }
      
    } 
  )}
  )
  observeEvent(input$frameM8,{(
    { 
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+8)
      # updateTextInput(session,inputId = "framesboxid1",
      #                 value = paste("8") )
      if (input$frameM8==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("8") )
      }
    }
  )}
  )
  observeEvent(input$frameM9,{(
    { 
      valueM<- input$frameMedium
      updateNumericInput(session, "frameMedium", value=valueM+9)
      updateTextInput(session,inputId = "framesboxid1",
                      value = paste("9") )
      if (input$frameM9==TRUE & input$select1!=3 ){
        updateTextInput(session,inputId = "framesboxid1",
                        value = paste("9") )
      }
    }
  )}
  )
  
  
  
  observeEvent(input$queenStatusQR, {(
    {
      if (input$queenStatusQR==TRUE){
        updateButton(session, "queenStatusQRC", value=FALSE)
        updateButton(session, "queenStatusQLC", value=FALSE)
        updateButton(session, "queenStatusPQ", value=FALSE)
        updateButton(session, "queenStatusQL", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$queenStatusQRC, {(
    {
      if (input$queenStatusQRC==TRUE){
        updateButton(session, "queenStatusQR", value=FALSE)
        updateButton(session, "queenStatusQLC", value=FALSE)
        updateButton(session, "queenStatusPQ", value=FALSE)
        updateButton(session, "queenStatusQL", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$queenStatusQLC, {(
    {
      if (input$queenStatusQLC==TRUE){
        updateButton(session, "queenStatusQRC", value=FALSE)
        updateButton(session, "queenStatusQR", value=FALSE)
        updateButton(session, "queenStatusPQ", value=FALSE)
        updateButton(session, "queenStatusQL", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$queenStatusPQ, {(
    {
      if (input$queenStatusPQ==TRUE){
        updateButton(session, "queenStatusQRC", value=FALSE)
        updateButton(session, "queenStatusQLC", value=FALSE)
        updateButton(session, "queenStatusQR", value=FALSE)
        updateButton(session, "queenStatusQL", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$queenStatusQL, {(
    {
      if (input$queenStatusQL==TRUE){
        updateButton(session, "queenStatusQRC", value=FALSE)
        updateButton(session, "queenStatusQLC", value=FALSE)
        updateButton(session, "queenStatusPQ", value=FALSE)
        updateButton(session, "queenStatusQR", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$queenSeenYes, {(
    {
      if (input$queenSeenYes==TRUE){
        updateButton(session, "queenSeenNo", value=FALSE)
        
        
      }
    }
  )}
  )
  observeEvent(input$queenSeenNo, {(
    {
      if (input$queenSeenNo==TRUE){
        updateButton(session, "queenSeenYes", value=FALSE)
        
        
      }
    }
  )}
  )
  observeEvent(input$eggsSeenYes, {(
    {
      if (input$eggsSeenYes==TRUE){
        updateButton(session, "eggsSeenNo", value=FALSE)
        
        
      }
    }
  )}
  )
  observeEvent(input$eggsSeenNo, {(
    {
      if (input$eggsSeenNo==TRUE){
        updateButton(session, "eggsSeenYes", value=FALSE)
        
        
      }
    }
  )}
  )
  observeEvent(input$openBroodNone, {(
    {
      if (input$openBroodNone==TRUE){
        updateButton(session, "openBroodWeak", value=FALSE)
        updateButton(session, "openBroodFair", value=FALSE)
        updateButton(session, "openBroodStrong", value=FALSE)
        updateButton(session, "openBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$openBroodWeak, {(
    {
      if (input$openBroodWeak==TRUE){
        updateButton(session, "openBroodNone", value=FALSE)
        updateButton(session, "openBroodFair", value=FALSE)
        updateButton(session, "openBroodStrong", value=FALSE)
        updateButton(session, "openBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$openBroodFair, {(
    {
      if (input$openBroodFair==TRUE){
        updateButton(session, "openBroodWeak", value=FALSE)
        updateButton(session, "openBroodNone", value=FALSE)
        updateButton(session, "openBroodStrong", value=FALSE)
        updateButton(session, "openBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$openBroodStrong, {(
    {
      if (input$openBroodStrong==TRUE){
        updateButton(session, "openBroodWeak", value=FALSE)
        updateButton(session, "openBroodFair", value=FALSE)
        updateButton(session, "openBroodNone", value=FALSE)
        updateButton(session, "openBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$openBroodOutstanding, {(
    {
      if (input$openBroodOutstanding==TRUE){
        updateButton(session, "openBroodWeak", value=FALSE)
        updateButton(session, "openBroodFair", value=FALSE)
        updateButton(session, "openBroodStrong", value=FALSE)
        updateButton(session, "openBroodNone", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$cappedBroodNone, {(
    {
      if (input$cappedBroodNone==TRUE){
        updateButton(session, "cappedBroodWeak", value=FALSE)
        updateButton(session, "cappedBroodFair", value=FALSE)
        updateButton(session, "cappedBroodStrong", value=FALSE)
        updateButton(session, "cappedBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$cappedBroodWeak, {(
    {
      if (input$cappedBroodWeak==TRUE){
        updateButton(session, "cappedBroodNone", value=FALSE)
        updateButton(session, "cappedBroodFair", value=FALSE)
        updateButton(session, "cappedBroodStrong", value=FALSE)
        updateButton(session, "cappedBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$cappedBroodFair, {(
    {
      if (input$cappedBroodFair==TRUE){
        updateButton(session, "cappedBroodWeak", value=FALSE)
        updateButton(session, "cappedBroodNone", value=FALSE)
        updateButton(session, "cappedBroodStrong", value=FALSE)
        updateButton(session, "cappedBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$cappedBroodStrong, {(
    {
      if (input$cappedBroodStrong==TRUE){
        updateButton(session, "cappedBroodWeak", value=FALSE)
        updateButton(session, "cappedBroodFair", value=FALSE)
        updateButton(session, "cappedBroodNone", value=FALSE)
        updateButton(session, "cappedBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$cappedBroodOutstanding, {(
    {
      if (input$cappedBroodOutstanding==TRUE){
        updateButton(session, "cappedBroodWeak", value=FALSE)
        updateButton(session, "cappedBroodFair", value=FALSE)
        updateButton(session, "cappedBroodStrong", value=FALSE)
        updateButton(session, "cappedBroodNone", value=FALSE)
        
      }
    }
  )}
  )
  
  observeEvent(input$cappedBroodWeak, {(
    {
      if (input$cappedBroodWeak==TRUE){
        updateButton(session, "cappedBroodNone", value=FALSE)
        updateButton(session, "cappedBroodFair", value=FALSE)
        updateButton(session, "cappedBroodStrong", value=FALSE)
        updateButton(session, "cappedBroodOutstanding", value=FALSE)
        
      }
    }
  )}
  )
  
  observeEvent(input$broodDiseaseNone, {(
    {
      if (input$broodDiseaseNone==TRUE){
        updateButton(session, "broodDiseaseMild", value=FALSE)
        updateButton(session, "broodDiseaseMod", value=FALSE)
        updateButton(session, "broodDiseaseSevere", value=FALSE)
        
        
      }
    }
  )}
  )
  observeEvent(input$broodDiseaseMild, {(
    {
      if (input$broodDiseaseMild==TRUE){
        updateButton(session, "broodDiseaseNone", value=FALSE)
        updateButton(session, "broodDiseaseMod", value=FALSE)
        updateButton(session, "broodDiseaseSevere", value=FALSE)
      }
    }
  )}
  )
  observeEvent(input$broodDiseaseMod, {(
    {
      if (input$broodDiseaseMod==TRUE){
        updateButton(session, "broodDiseaseMild", value=FALSE)
        updateButton(session, "broodDiseaseNone", value=FALSE)
        updateButton(session, "broodDiseaseSevere", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$broodDiseaseSevere, {(
    {
      if (input$broodDiseaseSevere==TRUE){
        updateButton(session, "broodDiseaseMild", value=FALSE)
        updateButton(session, "broodDiseaseMod", value=FALSE)
        updateButton(session, "broodDiseaseNone", value=FALSE)
        
      }
    }
  )}
  )
  
  observeEvent(input$adultDiseaseNone, {(
    {
      if (input$adultDiseaseNone==TRUE){
        updateButton(session, "adultDiseaseMild", value=FALSE)
        updateButton(session, "adultDiseaseMod", value=FALSE)
        updateButton(session, "adultDiseaseSevere", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$adultDiseaseMild, {(
    {
      if (input$adultDiseaseMild==TRUE){
        updateButton(session, "adultDiseaseNone", value=FALSE)
        updateButton(session, "adultDiseaseMod", value=FALSE)
        updateButton(session, "adultDiseaseSevere", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$adultDiseaseMod, {(
    {
      if (input$adultDiseaseMod==TRUE){
        updateButton(session, "adultDiseaseMild", value=FALSE)
        updateButton(session, "adultDiseaseNone", value=FALSE)
        updateButton(session, "adultDiseaseSevere", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$adultDiseaseSevere, {(
    {
      if (input$adultDiseaseSevere==TRUE){
        updateButton(session, "adultDiseaseMild", value=FALSE)
        updateButton(session, "adultDiseaseMod", value=FALSE)
        updateButton(session, "adultDiseaseNone", value=FALSE)
        
      }
    }
  )}
  )
  
  observeEvent(input$secondaryPestsNone, {(
    {
      if (input$secondaryPestsNone==TRUE){
        updateButton(session, "secondaryPestsMild", value=FALSE)
        updateButton(session, "secondaryPestsMod", value=FALSE)
        updateButton(session, "secondaryPestsSevere", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$secondaryPestsMild, {(
    {
      if (input$secondaryPestsMild==TRUE){
        updateButton(session, "secondaryPestsNone", value=FALSE)
        updateButton(session, "secondaryPestsMod", value=FALSE)
        updateButton(session, "secondaryPestsSevere", value=FALSE)
        
      }
    }
  )}
  )
  observeEvent(input$secondaryPestsMod, {(
    {
      if (input$secondaryPestsMod==TRUE){
        updateButton(session, "secondaryPestsMild", value=FALSE)
        updateButton(session, "secondaryPestsNone", value=FALSE)
        updateButton(session, "secondaryPestsSevere", value=FALSE)
      }
    }
  )}
  )
  observeEvent(input$secondaryPestsSevere, {(
    {
      if (input$secondaryPestsSevere==TRUE){
        updateButton(session, "secondaryPestsMild", value=FALSE)
        updateButton(session, "secondaryPestsMod", value=FALSE)
        updateButton(session, "secondaryPestsNone", value=FALSE)
      }
    }
  )}
  )
})