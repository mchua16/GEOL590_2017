install.packages("pryr")
library(dplyr)
install.packages("microbenchmark")
library(tidyverse)
library(lazyeval)

df <- mtcars #assigns mtcars to df for use in testing if function works

add_mutate <- function(col1, col2, name) { #creates a function assigned as add_mutate
  if(is.data.frame(df)!= TRUE)
    warning("not a data frame") #if df is not a data frame, this warning is received.
  add2 <- lazyeval::interp(~ a + b, a = as.name(col1), b = as.name(col2), na.rm=TRUE) #adds a and b; converts a to col1 and b to col2. if col1 and/or col2 are invalid, r returns NA values for the new column.
  df %>% #pipes through df; in this case, mtcars.
  mutate_(.dots = setNames(list(add2), name)) #mutate_: final and correct names are used by mutate; sets names in add2; can change the new column to any 'name' desired by user
}

add_mutate('wt', 'mpg', 'sumsss') #performed function in mtcars dataframe with the "wt" and "mpg" columns; new column name is "sumsss"

five_dollar <- c(1:10^4) #assigned all the numbers between 1 and 10,000 to five_dollar

your_fun <- function (five_dollar) {
  for (val in five_dollar)  #for values in the vector "five_dollar..."
  sums <- sum(five_dollar) #for loop that calculates the sum of the elements of a vector, particularly "five_dollar"
  print(sums)
}

your_fun(1:10^4) #using the function your_fun, added all of the numbers between 1 and 10,000

test.vec <- 1:10^4
microbenchmark(
  your_fun(test.vec),
  sum(test.vec)
) #your_fun takes longer because the for loop would go through all 10,000 rows.
