
library(shiny)

shinyUI(fluidPage(
  
  # Title
  #titlePanel("R Data Quality"), 
  img(src='rDQLogo1.png', align = "left"),
  version <- "10th Sept 2017 - skeleton version: welcome to rDQ! This is the skeleton user interface (UI) upon which shall be built the many functions that implement comprehensive data quality management in an R environment",
  
  mainPanel(width = "12",
            # Navigation pane
            navbarPage("menu:",
                       navbarMenu("rDQ Analyser",
                                  tabPanel("Explore Data",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("Explore data content")
                                                      )  
                                               )
                                           ))
                       ),
                       navbarMenu("rDQ Rules",
                                  tabPanel("Data Dictionary",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("Data dictionary content")
                                                      )  
                                               )
                                           )),
                                  tabPanel("Rule Generator",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("Rule generator content")
                                                      )  
                                               )
                                           ))
                       ),
                       navbarMenu("rDQ Monitor",
                                  tabPanel("Define Control Point",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("Control point content")
                                                      )  
                                               )
                                           )),
                                  tabPanel("Run Control",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("Run control content")
                                                      )  
                                               )
                                           ))
                       ),
                       tabPanel("rDQ Transform",
                                fluidRow(
                                    column(colw,
                                           navlistPanel(
                                               tabPanel("Transformations content")
                                           )  
                                    )
                                )
                            ),
                       navbarMenu("rDQ Issues",
                                  tabPanel("List Issues",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("List issues content")
                                                      )  
                                               )
                                           )),
                                  tabPanel("Create/Delete Issue",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("Create/Delete Issue content")
                                                      )  
                                               )
                                           )
                                    )
                       ),
                       navbarMenu("rDQ Ref Data",
                                  tabPanel("Reference Data",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("Update reference tables and define custom reference data")
                                                      )  
                                               )
                                           )
                                        )
                       ),
                       tabPanel("rDQ Dashboard",
                                fluidRow(
                                    column(colw,
                                           navlistPanel(
                                               tabPanel("Dashboard content")
                                           )  
                                    )
                                )
                            ),
                       
                       navbarMenu("rDQ Reports",
                                  tabPanel("Define Reports",
                                           fluidRow(
                                               column(colw,
                                                   navlistPanel(
                                                       tabPanel("Define report content")
                                                   )  
                                               )
                                           )
                                    ),
                                  tabPanel("Run Report",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("Run report content")
                                                      )  
                                               )
                                           )
                                  )
                       ),
                       navbarMenu("rDQ Admin",
                                  tabPanel("User Preferences",
                                           navlistPanel(
                                             tabPanel("User Profile",
                                                      textInput("name", "Name:"),
                                                      textInput("org", "Organisation:"),
                                                      textInput("team", "Team:"),
                                                      textInput("tel", "Telephone:"),
                                                      textInput("email", "Email:"),
                                                      #fileInput("img","upload an image file")
                                                      #helpText("Image must be 100x100px")
                                                      sidebarPanel(align = "right",
                                                                  textOutput("myname"),
                                                                  textOutput("myorg"),
                                                                  textOutput("myteam"),
                                                                  textOutput("mytel"),
                                                                  textOutput("myemail")
                                                        
                                                      )
                                             ),
                                             tabPanel("User Preferences"),
                                             tabPanel("System Configuration")
                                           )
                                  ),
                                  tabPanel("System Log",
                                           fluidRow(
                                               column(colw,
                                                      navlistPanel(
                                                          tabPanel("System log content")
                                                      )  
                                               )
                                           ))
                       )
            )
  )
  
))
