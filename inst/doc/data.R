## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(polAr)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
  
library(polAr)

show_available_elections()
   


## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
  
get_election_data(district = "caba", 
                  category = "dip",
                  round = "paso", 
                  year = 2011,
                  long = FALSE)


## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
  
data <- get_election_data(district = "caba", 
                          category = "dip",
                          round = "paso", 
                          year = 2011, 
                          level = "departamento", long = FALSE) %>% 
  print()
   


## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
  
data %>% 
  make_long() 


## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
  

data %>% 
  make_long %>% 
  get_names() 


