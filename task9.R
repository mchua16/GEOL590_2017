library(tidyverse) #loads tidyverse

install.packages(c("devtools", "roxygen2", "testthat", "knitr")) #installs these packages

install.packages("rstudioapi")
rstudioapi::isAvailable("0.99.149") #makes sure I have a recent version of RStudio

library(devtools) #loads devtools

x <-  diamonds$price #assigns the depth column of the diamonds dataset to x

take_mean <- function(x) { #creates a function assigned as take_mean
  mean(x) #takes the mean of x
}

take_mean(x) #testing function with x

devtools::load_all() #loads all packages including task9

devtools::use_testthat() #sets up package to use testthat

devtools::test() #tests package

test_that("take_mean takes the mean of x", {
  x <- c(1,2)
  expect_that(mean(x) == 1.5, is_true())
}) #code for testing task9 package

devtools::use_vignette("my-vignette") #creates vignette

browseVignettes("tidyverse") #browses ggplot2 vignette

