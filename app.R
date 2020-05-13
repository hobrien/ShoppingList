#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#setwd("~/Dropbox/Home/Food/ShoppingList/")

library(shiny)
library(tidyverse)
library(DT)

units <- read_csv("Data/units_view.csv") %>% select(-id)

ingredients <- read_csv("Data/Ingredients_view.csv") %>% 
  left_join(units) %>%
  select(-id)

sources <- read_csv("Data/sources_view.csv") %>% 
  mutate(link=paste0("<a href=", link, " target='_blank'>", source, "</a>"),
         source=ifelse(str_detect(link, 'NULL'), source, link)) %>%
  select(-id, -link)

sources <- count(ingredients, recipe) %>% select(recipe) %>%
  left_join(sources) %>%
  left_join(read_csv("Data/frequency_view.csv")) %>%
  arrange(desc(freq)) %>%
  select(-freq, -id)
              

recipes <- unique(ingredients$recipe)

list_ingredients <- function(ingredients, recipe_list) {
  filter(ingredients, recipe %in% recipe_list ) %>%
    group_by(ingredient, unit) %>%
    summarise(amount=sum(amount)) %>%
    ungroup() %>%
    mutate(unit=ifelse(is.na(unit), '', unit),
           spacer = ifelse(unit == '', '', ' '),
           plural = ifelse(amount == 1 | unit == '', '', 's'),
           ingredient=paste0(ingredient, " (", amount, spacer, unit, plural, ')')
    )
}
    

ui <- fluidPage(
   
  navbarPage("Shopping List Generator",
   tabPanel("Recipes",
     fluidRow(
       column(12,
          DT::dataTableOutput('Sources')
       )
     ),
     fluidRow(
       column(12,
             actionButton('clear1', 'Clear Selection')
       )
     )
   ),
   tabPanel("Ingredients",
     fluidRow(
       column(12,
         checkboxGroupInput("Ingredients", label = '',
                            choices = c())
       )
     ),
   fluidRow(
      column(12,
             downloadButton("downloadData", "Download List")
      )
    )
  )    
)
)

server <- function(input, output, session) {
  output$Ingredients <- DT::renderDataTable({
    list_ingredients(ingredients, sources$recipe[input$Sources_rows_selected]) %>%
    DT::datatable()
  })
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected]) %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "Ingredients",
                             choices = ingredients
    )
  })

  output$Sources <- DT::renderDataTable({
    sources %>%
      DT::datatable(selection='multiple', escape = FALSE)
  })
  proxy = dataTableProxy('Sources')
  observeEvent(input$clear1, {
    proxy %>% selectRows(NULL)
  })
  output$downloadData <- downloadHandler(
    filename = function() {
      "Ingredients.csv"
    },
    content = function(file) {
      write_tsv(list_ingredients(ingredients, sources$recipe[input$Sources_rows_selected]),
                file, na='')
    })
}


# Run the application 
shinyApp(ui = ui, server = server)

