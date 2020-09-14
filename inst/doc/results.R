## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

 options(rmarkdown.html_vignette.check_title = FALSE)


## ----setup--------------------------------------------------------------------
library(polAr)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE---------------
  
 caba_2011_diputados_general <-  get_election_data(district = "caba", 
                                                   category = "dip", 
                                                   round = "paso", 
                                                   year = 2011, long = TRUE) 

 
 tabulate_results(caba_2011_diputados_general)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE---------------
 tabulate_results(caba_2011_diputados_general, LaTeX = TRUE)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE---------------
 plot_results(caba_2011_diputados_general)

## ----map_results--------------------------------------------------------------

caba_2019_departamento <- get_election_data(district = "caba", category = "dip", round = "gral", year = 2019,
                  level = "departamento")

caba_2019_departamento


map_results(caba_2019_departamento)


