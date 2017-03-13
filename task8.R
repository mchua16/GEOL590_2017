install.packages("pryr")
library(dplyr)
install.packages("microbenchmark")

df <- diamonds

col1 <- diamonds$depth #assigns the depth column of the diamonds dataset to col1

col2 <- diamonds$table #assigns the table column of the diamonds dataset to col2

add_mutate <- function(df, col1, col2) { #creates a function assigned as add_mutate 
  as.data.frame(df) #I think this makes df a data frame?
  if(is.data.frame(df)!= TRUE)
    warning("not a data frame") #if df is not a data frame, this warning is received.
  if(as.numeric(col1)!= TRUE)
    warning("col1 is not numeric") #if col1 is not numeric, this warning will be received. a new column with na values is also added when the next line is run.
  if(as.numeric(col2)!= TRUE)
    warning("col2 is not numeric")
  add2 <- mutate(df, newcol  = col1 + col2) #allows users to add two columns of a data frame, create a new column with the sum, and allows the user to name the new column
  return(add2) 
} 

five_dollar <- c(1:10^4)

your_fun <- function (five_dollar) {
  for (val in five_dollar)  #for values in the vector "five_dollar..."
  sums <- sum(five_dollar) #for loop that calculates the sum of the elements of a vector, particularly "five_dollar"
  print(sums)
}

your_fun(1:10^4)

test.vec <- 1:10^4
microbenchmark(
  your_fun(test.vec),
  sum(test.vec)
) #your_fun takes longer because the for loop would go through all 10,000 rows.

quinate <- read.csv("quinate.csv") #this line and lines below were added to test the "invalid arguments" bullet.

q_time <- quinate$Time

add_mutate <- function(q_time) { #creates a function assigned as add_mutate 
  if(is.data.frame(q_time)!= TRUE)
    warning("not a data frame") #if df is not a data frame, R gives me this warning.
}

add_mutate(q_time)
#end of testing

df <- diamonds #this line and below is testing "NA values" bullet

col1 <-  diamonds$table #assigns the depth column of the diamonds dataset to col1

col2 <- diamonds$price #assigns the table column of the diamonds dataset to col2

add_mutate <- function(df, col1, col2) {
  if(as.numeric(col1)!= TRUE)
    warning("col1 is not numeric")
  if(as.numeric(col2)!= TRUE)
    warning("col2 is not numeric")
  add2 <- mutate(df, newcol  = col1 + col2)
  return(add2)
} 

add_mutate(df, col1, col2)
#end of testing; also works with quinate.csv

col1
