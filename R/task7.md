Task 7
================
Michelle Chua
March 3, 2017

    ## Source: local data frame [26,130 x 15]
    ## Groups: wind_speed [36]
    ## 
    ##    origin  year month   day  hour  temp  dewp humid wind_dir wind_speed
    ##     <chr> <dbl> <dbl> <int> <int> <dbl> <dbl> <dbl>    <dbl>      <dbl>
    ## 1     EWR  2013     1     1     0 37.04 21.92 53.97      230   10.35702
    ## 2     EWR  2013     1     1     1 37.04 21.92 53.97      230   13.80936
    ## 3     EWR  2013     1     1     2 37.94 21.92 52.09      230   12.65858
    ## 4     EWR  2013     1     1     3 37.94 23.00 54.51      230   13.80936
    ## 5     EWR  2013     1     1     4 37.94 24.08 57.04      240   14.96014
    ## 6     EWR  2013     1     1     6 39.02 26.06 59.37      270   10.35702
    ## 7     EWR  2013     1     1     7 39.02 26.96 61.63      250    8.05546
    ## 8     EWR  2013     1     1     8 39.02 28.04 64.43      240   11.50780
    ## 9     EWR  2013     1     1     9 39.92 28.04 62.21      250   12.65858
    ## 10    EWR  2013     1     1    10 39.02 28.04 64.43      260   12.65858
    ## # ... with 26,120 more rows, and 5 more variables: wind_gust <dbl>,
    ## #   precip <dbl>, pressure <dbl>, visib <dbl>, time_hour <dttm>

![](task7_files/figure-markdown_github/unnamed-chunk-2-1.png)

    ## Source: local data frame [26,126 x 15]
    ## Groups: wind_speed [34]
    ## 
    ##    origin  year month   day  hour  temp  dewp humid wind_dir wind_speed
    ##     <chr> <dbl> <dbl> <int> <int> <dbl> <dbl> <dbl>    <dbl>      <dbl>
    ## 1     JFK  2013     1    31     9 53.60 51.80 93.60      200   42.57886
    ## 2     EWR  2013     1    31     9 60.80 59.00 93.79      230   40.27730
    ## 3     LGA  2013     1    31     9 57.20 53.60 87.74      180   40.27730
    ## 4     EWR  2013     1    31    13 46.04 30.02 53.33      270   39.12652
    ## 5     JFK  2013     1    31    12 51.80 46.40 81.74      270   36.82496
    ## 6     JFK  2013    11    24    15 28.04 -0.04 29.16      310   36.82496
    ## 7     JFK  2013     1    31     6 53.06 51.08 92.96      180   35.67418
    ## 8     JFK  2013     1    31    13 46.94 30.02 51.55      270   35.67418
    ## 9     JFK  2013     1    31    19 42.98 17.06 34.81      260   35.67418
    ## 10    JFK  2013    11    27     9 60.98 59.00 93.19      170   35.67418
    ## # ... with 26,116 more rows, and 5 more variables: wind_gust <dbl>,
    ## #   precip <dbl>, pressure <dbl>, visib <dbl>, time_hour <dttm>

    ## Source: local data frame [8,709 x 15]
    ## Groups: wind_speed [32]
    ## 
    ##    origin  year month   day  hour  temp  dewp humid wind_dir wind_speed
    ##     <chr> <dbl> <dbl> <int> <int> <dbl> <dbl> <dbl>    <dbl>      <dbl>
    ## 1     JFK  2013     1     1     0 37.94 23.00 54.51      240   16.11092
    ## 2     JFK  2013     1     1     1 37.94 24.08 57.04      250   17.26170
    ## 3     JFK  2013     1     1     2 39.02 24.98 56.77      240   19.56326
    ## 4     JFK  2013     1     1     3 39.02 26.06 59.37      240   18.41248
    ## 5     JFK  2013     1     1     4 39.02 24.98 56.77      260   14.96014
    ## 6     JFK  2013     1     1     6 39.02 26.06 59.37      260   12.65858
    ## 7     JFK  2013     1     1     7 39.02 26.06 59.37      270   11.50780
    ## 8     JFK  2013     1     1     8 39.92 26.96 59.50      260   14.96014
    ## 9     JFK  2013     1     1     9 39.92 28.04 62.21      250   17.26170
    ## 10    JFK  2013     1     1    10 39.02 26.96 61.63      260   14.96014
    ## # ... with 8,699 more rows, and 5 more variables: wind_gust <dbl>,
    ## #   precip <dbl>, pressure <dbl>, visib <dbl>, time_hour <dttm>

    ## # A tibble: 38 × 2
    ##    wind_dir   median
    ##       <dbl>    <dbl>
    ## 1       290 14.96014
    ## 2       300 14.96014
    ## 3       310 14.96014
    ## 4       330 14.96014
    ## 5       270 13.80936
    ## 6       320 13.80936
    ## 7       260 12.65858
    ## 8       280 12.65858
    ## 9       340 12.65858
    ## 10      170 11.50780
    ## # ... with 28 more rows

![](task7_files/figure-markdown_github/unnamed-chunk-2-2.png)

    ## Source: local data frame [8,706 x 15]
    ## Groups: wind_speed [31]
    ## 
    ##    origin  year month   day  hour  temp  dewp humid wind_dir wind_speed
    ##     <chr> <dbl> <dbl> <int> <int> <dbl> <dbl> <dbl>    <dbl>      <dbl>
    ## 1     EWR  2013     1     1     0 37.04 21.92 53.97      230   10.35702
    ## 2     EWR  2013     1     1     1 37.04 21.92 53.97      230   13.80936
    ## 3     EWR  2013     1     1     2 37.94 21.92 52.09      230   12.65858
    ## 4     EWR  2013     1     1     3 37.94 23.00 54.51      230   13.80936
    ## 5     EWR  2013     1     1     4 37.94 24.08 57.04      240   14.96014
    ## 6     EWR  2013     1     1     6 39.02 26.06 59.37      270   10.35702
    ## 7     EWR  2013     1     1     7 39.02 26.96 61.63      250    8.05546
    ## 8     EWR  2013     1     1     8 39.02 28.04 64.43      240   11.50780
    ## 9     EWR  2013     1     1     9 39.92 28.04 62.21      250   12.65858
    ## 10    EWR  2013     1     1    10 39.02 28.04 64.43      260   12.65858
    ## # ... with 8,696 more rows, and 5 more variables: wind_gust <dbl>,
    ## #   precip <dbl>, pressure <dbl>, visib <dbl>, time_hour <dttm>

    ## # A tibble: 38 × 2
    ##    wind_dir   median
    ##       <dbl>    <dbl>
    ## 1       290 12.65858
    ## 2       300 12.65858
    ## 3       320 12.65858
    ## 4       330 12.65858
    ## 5       310 11.50780
    ## 6       340 11.50780
    ## 7        40 10.35702
    ## 8       260 10.35702
    ## 9       270 10.35702
    ## 10      280 10.35702
    ## # ... with 28 more rows

![](task7_files/figure-markdown_github/unnamed-chunk-2-3.png)

    ## Source: local data frame [8,711 x 15]
    ## Groups: wind_speed [31]
    ## 
    ##    origin  year month   day  hour  temp  dewp humid wind_dir wind_speed
    ##     <chr> <dbl> <dbl> <int> <int> <dbl> <dbl> <dbl>    <dbl>      <dbl>
    ## 1     LGA  2013     1     1     0 39.02 19.04 44.18      240   13.80936
    ## 2     LGA  2013     1     1     1 39.02 19.04 44.18      240   13.80936
    ## 3     LGA  2013     1     1     2 39.92 19.04 42.65      240   14.96014
    ## 4     LGA  2013     1     1     3 39.92 21.02 46.41      250   16.11092
    ## 5     LGA  2013     1     1     4 41.00 23.00 48.39      260   18.41248
    ## 6     LGA  2013     1     1     6 39.92 26.06 57.33      260   13.80936
    ## 7     LGA  2013     1     1     7 41.00 26.06 54.97      260   17.26170
    ## 8     LGA  2013     1     1     8 41.00 26.06 54.97      260   16.11092
    ## 9     LGA  2013     1     1     9 41.00 26.06 54.97      260   17.26170
    ## 10    LGA  2013     1     1    10 39.92 24.98 54.81      250   14.96014
    ## # ... with 8,701 more rows, and 5 more variables: wind_gust <dbl>,
    ## #   precip <dbl>, pressure <dbl>, visib <dbl>, time_hour <dttm>

    ## # A tibble: 38 × 2
    ##    wind_dir   median
    ##       <dbl>    <dbl>
    ## 1       270 13.80936
    ## 2       290 13.80936
    ## 3       260 12.65858
    ## 4       300 12.65858
    ## 5       310 12.65858
    ## 6       320 12.65858
    ## 7       280 11.50780
    ## 8       330 11.50780
    ## 9       170 10.35702
    ## 10      250 10.35702
    ## # ... with 28 more rows

![](task7_files/figure-markdown_github/unnamed-chunk-2-4.png)

    ## Joining, by = "carrier"

    ## Source: local data frame [12 x 13]
    ## Groups: name [12]
    ## 
    ##                        name   `1`   `2`   `3`   `4`   `5`   `6`   `7`
    ## *                     <chr> <int> <int> <int> <int> <int> <int> <int>
    ## 1      Alaska Airlines Inc.    11    11    11    21    21    21    15
    ## 2    American Airlines Inc.  1895  1895  1895  1895  1895  1895  1895
    ## 3      Delta Air Lines Inc.   575   575   575   575   575   575   807
    ## 4         Endeavor Air Inc.  4171  4023  3953  3879  3879  3867  3879
    ## 5                 Envoy Air  3768  3737  3768  3768  3768  3768  3267
    ## 6  ExpressJet Airlines Inc.  4626  4201  4911  4603  4196  4160  4372
    ## 7           JetBlue Airways   507   380   507   380   517   517    27
    ## 8     SkyWest Airlines Inc.    NA    NA    NA    NA    NA  4528    NA
    ## 9    Southwest Airlines Co.  3848  3839   815  1972   433  2213   488
    ## 10    United Air Lines Inc.  1545  1018   475  1545  1622  1686   332
    ## 11          US Airways Inc.   245  1117  1117  1843  1219  1431  1431
    ## 12           Virgin America    NA    NA    NA   193   183   183   183
    ## # ... with 5 more variables: `8` <int>, `9` <int>, `10` <int>, `11` <int>,
    ## #   `12` <int>

![](task7_files/figure-markdown_github/unnamed-chunk-2-5.png)

    ## Joining, by = c("year", "sex", "name", "n", "prop")

    ## Joining, by = c("year", "sex", "name", "n", "prop")

![](task7_files/figure-markdown_github/unnamed-chunk-2-6.png)
