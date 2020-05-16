## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(polAr)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
  
 caba_2011_diputados_general <-  get_election_data(district = "caba", 
                                                   category = "dip", 
                                                   round = "paso", 
                                                   year = 2011, long = TRUE) 
 
 data <- get_names(data = caba_2011_diputados_general) 
 
 tabulate_results(data)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
 tabulate_results(data, LaTeX = TRUE)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
 plot_results(data)

