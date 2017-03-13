a <- c(1,2,3,4,5) #created a vector of length 5

attributes(a) #returns the attributes of a

names(a) <- c("one","two","three","four","five") #gives each number their respective names

attr(a,'name') 

dim(a) <- c(5,1)

attr(a,'dim') #gives back the dimensions of a

a <- 1 

length(a) #determines length of a

b <- 2

c <- a + b #assigns addition of a and b to c

length(c)

set.seed(0)

d <- rnorm(20)

e <- rnorm(20)

f <- d + e #adds d and e and assigns to f

length(d)

length(f)

a <- c(1,2,3,4,5)

names(a) <- c("one","two","three","four","five") 

attr(a,'name')

dim(a) <- c(5,1)

attr(a,'dim')

f2 <- rev(factor(letters))

f3 <- factor(letters, levels = rev(letters))

attributes(mtcars) #returns attributes

data.frame() #data frame with 0 columns and 0 rows; mtcars is a data frame already.

a<-read.csv("2016_10_11_plate_reader.csv", skip=33) #this object is a data frame.

a

str(a)

library(tidyverse)

read_csv("2016_10_11_plate_reader.csv", skip=33) #this object is a tibble.

mtcars$cyl #creates a vector that is the cyl column of mtcars by using the $ operator
mtcars["cyl"] #creates a vector that is the cyl column of mtcars by using [] subsetting

mtcars[c(TRUE, rep(FALSE, 31)), ]

mtcars[(mtcars$wt < 3) | (mtcars$wt > 4), ] #create a data frame that contains all the columns of mtcars, but only with cars that weigh less than 3.0 OR more than 4.0 

mtcars[ ,c(1,6)] #lines 38 and 39 should lead to the same results.

mtcars[ ,c("mpg","wt")] #creates a data frame that contains all the rows of mtcars, but only the mpg and wt

median(mtcars$mpg) #finds the median of the mpg column in mtcars

mtcars[which(mtcars$mpg==19.2),] #added brackets to include details, without brackets; the row numbers are just included.

mtcars[mtcars$mpg==median(mtcars$mpg),] #lines 47 and 48 are two different ways to determine which cars get (mpg) equal to the median gas mileage

mtcars[mtcars$cyl == 4, ] #creates a data frame of cars with only 4 cylinders

mtcars[-c(1:4), ] #excludes rows 1 and 4; does not require the c.

mtcars[mtcars$cyl <= 5,] #contains all columns but only with cars with cylinder less than or equal to 5

mtcars[(mtcars$cyl == 4) | (mtcars$cyl == 6), ] #contains all columns but only with cars with cylinder = 4 or 6

rownames(mtcars)[c(1,4,31)] #[1] "Mazda RX4"      "Hornet 4 Drive" "Maserati Bora" ;gives names of rows 1, 4, and 31

mtcars$mpg==median(mtcars$mpg) #== acts as an operator. (TRUE and FALSE results)