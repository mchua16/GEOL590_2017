install.packages(c("devtools", "roxygen2", "testthat", "knitr")) #installs these packages

install.packages("rstudioapi") 
rstudioapi::isAvailable("0.99.149") #makes sure I have a recent version of RStudio

library(devtools)

create("task09rpackage")
