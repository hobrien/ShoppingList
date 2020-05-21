
#setwd("~/Dropbox/Home/Food/ShoppingList/")

library(shiny)
library(tidyverse)
library(DT)

units <- read_csv("Data/units_view.csv") %>% select(-id)

ingredients <- read_csv("Data/staples_view.csv") %>% mutate(recipe = 'staples') %>%
  bind_rows(read_csv("Data/Ingredients_view.csv")) %>% 
  left_join(units) %>%
  select(-id)

sources <- read_csv("Data/sources_view.csv") %>% 
  mutate(link=paste0("<a href=", link, " target='_blank'>", source, "</a>"),
         source=ifelse(str_detect(link, 'NULL'), source, link)) %>%
  select(-id, -link)

sources <- count(ingredients, recipe) %>% select(recipe) %>%
  filter(recipe != 'staples') %>%
  left_join(sources) %>%
  left_join(read_csv("Data/frequency_view.csv")) %>%
  arrange(desc(freq)) %>%
  select(-freq, -id)
              

recipes <- unique(ingredients$recipe)

list_ingredients <- function(ingredients, recipe_list, categories) {
  if (categories == 'all') {
      categories <- unique(ingredients$category)
  } else {
    categories <- c(categories)
  }
  recipe_list <- c("staples", recipe_list)
  filter(ingredients, recipe %in% recipe_list ) %>%
    filter(category %in% categories) %>%
    group_by(ingredient, unit, category) %>%
    summarise(amount=sum(amount)) %>%
    ungroup() %>%
    mutate(unit=ifelse(is.na(unit), '', unit),
           spacer = ifelse(unit == '', '', ' '),
           plural = ifelse(amount == 1 | unit == '', '', 's'),
           ingredient=paste0(ingredient, " (", amount, spacer, unit, plural, ')')
    ) %>%
    select(ingredient, category)
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
         checkboxGroupInput("DriedGoods", label = 'Dried Goods',
                            choices = c())
       )
     ),
     fluidRow(
       column(12,
              checkboxGroupInput("CannedGoods", label = 'Canned Goods',
                                 choices = c())
       )
     ),
     fluidRow(
       column(12,
              checkboxGroupInput("Spices", label = 'Spices',
                                 choices = c())
       )
     ),
     fluidRow(
       column(12,
              checkboxGroupInput("Bakery", label = 'Bakery',
                                 choices = c())
       )
     ),
     fluidRow(
       column(12,
              checkboxGroupInput("Produce", label = 'Produce',
                                 choices = c())
       )
     ),
     fluidRow(
       column(12,
              checkboxGroupInput("Dairy", label = 'Dairy',
                                 choices = c())
       )
     ),
     fluidRow(
       column(12,
              checkboxGroupInput("Meat", label = 'Meat',
                                 choices = c())
       )
     ),
     fluidRow(
       column(12,
              checkboxGroupInput("Frozen", label = 'Frozen',
                                 choices = c())
       )
     ),
     fluidRow(
       column(12,
              checkboxGroupInput("AsianMarket", label = 'Asian Market',
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
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "dried goods") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "DriedGoods",
                             choices = ingredients
    )
  })

  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "canned goods") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "CannedGoods",
                             choices = ingredients
    )
  })
  
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "spices") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "Spices",
                             choices = ingredients
    )
  })
  
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "bakery") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "Bakery",
                             choices = ingredients
    )
  })  
  
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "produce") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "Produce",
                             choices = ingredients
    )
  })  
  
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "dairy") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "Dairy",
                             choices = ingredients
    )
  }) 
  
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "meat") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "Meat",
                             choices = ingredients
    )
  }) 
  
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "frozen food") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "Frozen",
                             choices = ingredients
    )
  })
  
  observe({
    ingredients <- list_ingredients(ingredients, 
                                    sources$recipe[input$Sources_rows_selected], "asian market") %>%
      `$`(ingredient)
    
    updateCheckboxGroupInput(session, 
                             "AsianMarket",
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
      write_tsv(list_ingredients(ingredients, sources$recipe[input$Sources_rows_selected], "all") %>%
                  arrange(category),
                file, na='')
    })
}


# Run the application 
shinyApp(ui = ui, server = server)

