library(shiny)
library(shinyBS)
#library(shinydashboard)
shinyUI(fluidPage(
  # includeScript("/home/consultadd/Desktop/Ashutosh's project/rsqlite/main.js"),
  tags$head(tags$script(src="www/main.js")),
  
  selectInput(inputId = "select1", label = "Select Id", choices = c(1,2,3), selected = ''),
  # textOutput(outputId = 'out'),
  actionButton("action","search"),
  
  
  id1 <- 'active',
  titlePanel("ChemBee 3"),
  fluidRow(
    column(4,bsButton("Save", "Save",size="medium", type="action"), offset=6,style='width:150px;height:80px;'),
    column(2,bsButton("Edit", "Edit", size="medium", type="action")),
    fluidRow(),
    fluidRow(
      column(2,h4("Dead"), offset=1),
      column(1, bsButton("deadYes", "yes", size="medium",type="toggle")),
      column(1, bsButton("deadNo", "no", size="medium",type="toggle", value = TRUE)))
  ),br(),
  
  fluidRow(
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("deeptextbox1"))),
    column(2,conditionalPanel(condition = "input.deadNo",h4("# of Deep Boxes"), offset=3)),
    column(2, conditionalPanel(condition = "input.deadNo",uiOutput("deep0"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("deep1"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("deep2"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("deep3"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("deep4"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("deep5")))
  ),br(),
  
  fluidRow(
    column(1, conditionalPanel(condition = "input.deadYes" ,uiOutput("deeptextbox"))),
    column(2, conditionalPanel(condition = "input.deadYes" ,uiOutput("Deep_Boxes1"))),
    column(2, conditionalPanel(condition = "input.deadYes" ,uiOutput("deep00"))),
    column(1, conditionalPanel(condition = "input.deadYes" ,uiOutput("deep01"))),
    column(1, conditionalPanel(condition = "input.deadYes" ,uiOutput("deep02"))),
    column(1, conditionalPanel(condition = "input.deadYes" ,uiOutput("deep03"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("deep04")))
  ),br(),
  
  fluidRow(
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("medtextbox1"))),
    column(2,conditionalPanel(condition = "input.deadNo",h4("# of Medium Boxes"), offset=3)),
    column(2, conditionalPanel(condition = "input.deadNo",uiOutput("med0"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("med1"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("med2"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("med3"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("med4"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("med5")))
  ),br(),
  
  fluidRow(
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("medtextbox"))),
    column(2, conditionalPanel(condition = "input.deadYes",h4("# of Medium Boxes"), offset=3)),
    column(2, conditionalPanel(condition = "input.deadYes",uiOutput("med00"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("med01"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("med02"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("med03"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("med04")))
  ),br(),
  
  
  fluidRow(
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frametextbox1"))),
    column(2,conditionalPanel(condition = "input.deadNo",h4("Frames of bees in Mediums"), offset=3)),
    column(1, conditionalPanel(condition = "input.deadNo",numericInput('frameMedium', '',0))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM10"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM20"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM30"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM1"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM2"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM3"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM4"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM5"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM6"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM7"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM8"))),
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("frameM9"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("frameMClear", "Clear",size="medium", type="action")))
  ),br(),
  
  fluidRow(
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frametextbox"))),
    column(2, conditionalPanel(condition = "input.deadYes",uiOutput("frame_Boxes1"))),
    column(1, conditionalPanel(condition = "input.deadYes",numericInput('frameMedium1', '',0))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM010"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM020"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM030"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM01"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM02"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM03"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM04"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM05"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM06"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM07"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM08"))),
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("frameM09"))),
    column(1, conditionalPanel(condition = "input.deadYes",bsButton("frameMClear", "Clear",size="medium", type="action")))
  ),br(),
  
  fluidRow(
    column(1, conditionalPanel(condition = "input.deadNo",uiOutput("Queenstatustextbox1"))),
    column(2,conditionalPanel(condition = "input.deadNo",h4("Queen Status"), offset=3)),
    column(2, conditionalPanel(condition = "input.deadNo",bsButton("queenStatusQR", "QR", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("queenStatusQRC", "QRC", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("queenStatusQLC", "QLC", size="medium",type="toggle", class="active"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("queenStatusPQ", "PQ", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("queenStatusQL", "QL", size="medium",type="toggle")))
  ),br(),
  
  fluidRow(
    column(1, conditionalPanel(condition = "input.deadYes",uiOutput("Queenstatustextbox"))),
    column(2,conditionalPanel(condition = "input.deadYes",h4("Queen Status"), offset=3)),
    column(2, conditionalPanel(condition = "input.deadYes",bsButton("queenStatusQR", "QR", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadYes",bsButton("queenStatusQRC", "QRC", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadYes",bsButton("queenStatusQLC", "QLC", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadYes",bsButton("queenStatusPQ", "PQ", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadYes",bsButton("queenStatusQL", "QL", size="medium",type="toggle")))
    
  ),br(),
  
  fluidRow(
    column(2,conditionalPanel(condition = "input.deadNo",h4("Queen seen"), offset=3)),
    column(2, conditionalPanel(condition = "input.deadNo",bsButton("queenSeenYes", "Yes", size="medium",type="toggle", class='active'))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("queenSeenNo", "No", size="medium",type="toggle")))
  ),br(),
  
  fluidRow(
    column(2,conditionalPanel(condition = "input.deadNo",h4("Eggs seen"), offset=3)),
    column(2,conditionalPanel(condition = "input.deadNo", bsButton("eggsSeenYes", "Yes", size="medium",type="toggle", class='active'))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("eggsSeenNo", "No", size="medium",type="toggle")))
  ),br(),
  
  fluidRow(
    column(2,conditionalPanel(condition = "input.deadNo",h4("Open brood pattern"), offset=3)),
    column(3, conditionalPanel(condition = "input.deadNo",bsButton("openBroodNone", "none", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("openBroodWeak", "weak", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("openBroodFair", "fair", size="medium",type="toggle", class="active"))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("openBroodStrong", "strong", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("openBroodOutstanding", "outstanding", size="medium",type="toggle")))
  ),br(),
  
  fluidRow(
    column(2,conditionalPanel(condition = "input.deadNo",h4("Capped brood pattern"), offset=3)),
    column(3,conditionalPanel(condition = "input.deadNo", bsButton("cappedBroodNone", "none", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("cappedBroodWeak", "weak", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("cappedBroodFair", "fair", size="medium",type="toggle", class='active'))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("cappedBroodStrong", "strong", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("cappedBroodOutstanding", "outstanding", size="medium",type="toggle")))
  ),br(),
  
  fluidRow(
    column(2,conditionalPanel(condition = "input.deadNo",h4("Prevalence of brood disease"), offset=3)),
    column(2,conditionalPanel(condition = "input.deadNo", bsButton("broodDiseaseNone", "none", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("broodDiseaseMild", "mild", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("broodDiseaseMod", "mod", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("broodDiseaseSevere", "severe", size="medium",type="toggle", class='active'))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.broodDiseaseNone)", bsButton("broodDiseaseSnotty", "snotty", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.broodDiseaseNone)", bsButton("broodDiseaseFoul", "foul", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.broodDiseaseNone)", bsButton("broodDiseaseDryChalk", "Dry chalk", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.broodDiseaseNone)", bsButton("broodDiseaseYellow", "Yellow", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.broodDiseaseNone)", bsButton("broodDiseaseOther", "Other", size="medium",type="toggle")))
  ), br(),
  
  fluidRow(
    column(2,conditionalPanel(condition = "input.deadNo",h4("Prevalence of adult disease"), offset=3)),
    column(2, conditionalPanel(condition = "input.deadNo",bsButton("adultDiseaseNone", "none", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("adultDiseaseMild", "mild", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo",bsButton("adultDiseaseMod", "mod", size="medium",type="toggle", class="active"))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("adultDiseaseSevere", "severe", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo && !(input.adultDiseaseNone)",bsButton("adultDiseaseDefWing", "Def Wing", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.adultDiseaseNone)", bsButton("adultDiseaseKwing", "Kwing", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo && !(input.adultDiseaseNone)",bsButton("adultDiseaseJittery", "jittery", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.adultDiseaseNone)", bsButton("adultDiseaseParalysis", "paralysis", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.adultDiseaseNone)", bsButton("adultDiseasePoop", "poop", size="medium",type="toggle"))),
    column(1, conditionalPanel(condition = "input.deadNo && !(input.adultDiseaseNone)",bsButton("adultDiseaseOther", "other", size="medium",type="toggle")))
  ),br(),
  
  fluidRow(
    column(2,conditionalPanel(condition = "input.deadNo",h4("Prevalence of 2ndary pests"), offset=3)),
    column(2,conditionalPanel(condition = "input.deadNo", bsButton("secondaryPestsNone", "none", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("secondaryPestsMild", "mild", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("secondaryPestsMod", "mod", size="medium",type="toggle", class="active"))),
    column(1,conditionalPanel(condition = "input.deadNo", bsButton("secondaryPestsSevere", "severe", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.secondaryPestsNone)", bsButton("secondaryPestsWaxMoth", "Wax moth", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.secondaryPestsNone)", bsButton("secondaryPestsHiveBeetle", "Hive Beetle", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.secondaryPestsNone)", bsButton("secondaryPestsVarroa", "Varroa", size="medium",type="toggle"))),
    column(1,conditionalPanel(condition = "input.deadNo && !(input.secondaryPestsNone)", bsButton("secondaryPestsOther", "other", size="medium",type="toggle")))
  ),br(),
  
  fluidRow(
    column(2,conditionalPanel(condition = "input.deadNo",h4("Remarks"), offset=3)),
    column(8,conditionalPanel(condition = "input.deadNo",tags$textarea(id="Remarks",rows=1,cols=80, "")))
  )
  #  }
)
# img(src = "parcel_drdanger.png", height = 70, width = 70),

# tabPanel("Chemicals", value = "Chemicals",

#dashboardPage(
#  dashboardHeader(title="ChemSure"),
#  dashboardSidebar( radioButtons(inputId = "packageToBeShip",
#                                 label="Would you like information on delivery or receiving ?",
#                                 choices = c("Deliver" ,
#                                             "Receive" ), selected = "Deliver")),
#  dashboardBody(
#    basicPage( htmlOutput("commTextDisplay")

# radioButtons(inputId = "commercialOrThird",
#               label="Is the source Commercial or Third Party?",
#               choices = c("Y" ,
#                           "N" )),

#    )
#  )
#)

# basicPage(

# radioButtons(inputId = "commercialOrThird",
#               label="Is the source Commercial or Third Party?",
#               choices = c("Y" ,
#                           "N" )),
#      radioButtons(inputId = "packageToBeShip",
#                   label="Would you like information on delivery or receiving ?",
#                   choices = c("Deliver" ,
#                               "Receive" ), selected = "Deliver")

)
#)
#)