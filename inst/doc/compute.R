## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(polAr)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
  
 polAr::get_election_data(district = "tucuman", 
                   category = "dip", 
                   round = "gral", 
                   year = 2007) -> diputados_tucuman2007G
 
 
 
   polAr::compute_nep(data = diputados_tucuman2007G , index = "All")
   


## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------
  
 polAr::get_election_data(district = "tucuman", 
                   category = "dip", 
                   round = "gral", 
                   year = 2007, 
                   level = "departamento") -> diputados_tucuman_2007_general_depto
 
 
 
   polAr::compute_competitiveness(data = diputados_tucuman_2007_general_depto)
   


## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE----------

 data <- polAr::get_election_data(district = "tucuman", 
                   category = "dip", 
                   round = "gral", 
                   year = 2007, 
                   level = "departamento", long = TRUE)
                   
   compute_competitiveness(data = data, level = "departamento") 
   



