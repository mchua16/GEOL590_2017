Task 8
================
Michelle Chua
March 15, 2017

Below is a function that performs the following: -adds any two columns of any data frame and puts them in a new column of the same data frame. The new column name can be specified, -gives a warning if the data is not in a data frame, -creates a new column of NA values in the columns to be added are not valis. Note: the function below is also tidyverse friendly.

``` r
df <- mtcars #assigns mtcars to df for use in testing if function works

add_mutate <- function(col1, col2, name) { #creates a function assigned as add_mutate
  if(is.data.frame(df)!= TRUE)
    warning("not a data frame") #if df is not a data frame, this warning is received.
  add2 <- lazyeval::interp(~ a + b, a = as.name(col1), b = as.name(col2), na.rm=TRUE) #adds a and b; converts a to col1 and b to col2. if col1 and/or col2 are invalid, r returns NA values for the new column.
  df %>% #pipes through df; in this case, mtcars.
  mutate_(.dots = setNames(list(add2), name)) #mutate_: final and correct names are used by mutate; sets names in add2; can change the new column to any 'name' desired by user
}

add_mutate('wt', 'mpg', 'sumsss') #performed function in mtcars dataframe with the "wt" and "mpg" columns; new column name is "sumsss"
```

    ##     mpg cyl  disp  hp drat    wt  qsec vs am gear carb sumsss
    ## 1  21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4 23.620
    ## 2  21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4 23.875
    ## 3  22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1 25.120
    ## 4  21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1 24.615
    ## 5  18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2 22.140
    ## 6  18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1 21.560
    ## 7  14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4 17.870
    ## 8  24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2 27.590
    ## 9  22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2 25.950
    ## 10 19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4 22.640
    ## 11 17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4 21.240
    ## 12 16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3 20.470
    ## 13 17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3 21.030
    ## 14 15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3 18.980
    ## 15 10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4 15.650
    ## 16 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4 15.824
    ## 17 14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4 20.045
    ## 18 32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1 34.600
    ## 19 30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2 32.015
    ## 20 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1 35.735
    ## 21 21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1 23.965
    ## 22 15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2 19.020
    ## 23 15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2 18.635
    ## 24 13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4 17.140
    ## 25 19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2 23.045
    ## 26 27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1 29.235
    ## 27 26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2 28.140
    ## 28 30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2 31.913
    ## 29 15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4 18.970
    ## 30 19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6 22.470
    ## 31 15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8 18.570
    ## 32 21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2 24.180

A function called "your\_fun" was created so that numbers between 1 and 10,000 can be added by using a for loop.

``` r
five_dollar <- c(1:10^4) #assigned all the numbers between 1 and 10,000 to five_dollar

your_fun <- function (five_dollar) {
  for (val in five_dollar)  #for values in the vector "five_dollar..."
  sums <- sum(five_dollar) #for loop that calculates the sum of the elements of a vector, particularly "five_dollar"
  print(sums)
}

your_fun(1:10^4) #using the function your_fun, added all of the numbers between 1 and 10,000
```

    ## [1] 50005000

``` r
test.vec <- 1:10^4
microbenchmark(
  your_fun(test.vec),
  sum(test.vec)
) #your_fun takes longer because the for loop would go through all 10,000 rows.
```

    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000
    ## [1] 50005000

    ## Unit: microseconds
    ##                expr        min         lq         mean     median
    ##  your_fun(test.vec) 245376.642 251180.121 257958.73282 254021.484
    ##       sum(test.vec)     22.687     23.159     31.77457     26.467
    ##          uq        max neval cld
    ##  256896.166 394533.071   100   b
    ##      29.303    503.336   100  a
