## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

 options(rmarkdown.html_vignette.check_title = FALSE)
 

## ----setup--------------------------------------------------------------------
library(polAr)

## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE---------------
  
 polAr::get_election_data(district = "tucuman", 
                   category = "dip", 
                   round = "gral", 
                   year = 2007) -> diputados_tucuman2007G
 
 
 
   polAr::compute_nep(data = diputados_tucuman2007G , index = "All")
   


## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE---------------
  
 polAr::get_election_data(district = "tucuman", 
                   category = "dip", 
                   round = "gral", 
                   year = 2007, 
                   level = "departamento") -> diputados_tucuman_2007_general_depto
 
 
 
   polAr::compute_competitiveness(data = diputados_tucuman_2007_general_depto)
   


## ----echo=TRUE, message=FALSE, warning=FALSE, paged.print=FALSE---------------

 data <- polAr::get_election_data(district = "tucuman", 
                   category = "dip", 
                   round = "gral", 
                   year = 2007, 
                   level = "departamento", long = TRUE)
                   
   compute_competitiveness(data = data, level = "departamento") 
   



## ----seats--------------------------------------------------------------------
caba_dip_2013 <- get_election_data(district = "caba", category = "dip", round = "gral", 2013)

caba_dip_2013 %>% get_names()

compute_seats(caba_dip_2013)



