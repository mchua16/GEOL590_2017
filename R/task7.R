install.packages("nycflights13")
library(nycflights13)

install.packages("babynames")
library(babynames)

install.packages("dplyr")

library(tidyverse)

nycflights13::weather %>%
  group_by(wind_speed)

nycflights13::weather %>%
  ggplot(aes(origin, wind_speed)) +
  geom_point() #plots origin by wind_speed to find outliers

nycflights13_outliers <- nycflights13::weather %>%
  filter(wind_speed < 250) %>% group_by(wind_speed) #filters out any wind_speeds higher than 250

nycflights13_outliers %>% arrange(desc(wind_speed)) #arranges wind_speed in descending order

JFK_only <- nycflights13_outliers %>%
  filter(!grepl("EWR|LGA", origin)) #filters out EWR and LGA

JFK_only

JFKonly_median <- JFK_only %>%
  group_by(wind_dir) %>%
  summarise(median = median(wind_speed, na.rm = TRUE)) #took median of wind_speed for each direction

JFKonly_median %>%
  arrange(desc(median)) #answer for JFK: 290, 300, 310, 330 <- directions with highest median speed at JFK

JFKonly_median %>%
  ggplot(aes(median, wind_dir)) +
  geom_point() +
  xlab("median of wind_speed") +
  ggtitle("JFK only: wind speed by direction") #makes graph of JFK wind_speed medians by direction

EWR_only <- nycflights13_outliers %>%
  filter(!grepl("JFK|LGA", origin)) #filters out JFK and LGA

EWR_only

EWRonly_median <- EWR_only %>%
  group_by(wind_dir) %>%
  summarise(median = median(wind_speed, na.rm = TRUE)) #took median of wind_speed for each direction

EWRonly_median %>%
  arrange(desc(median)) #answer for EWR: 290, 300, 320, 330

EWRonly_median %>%
  ggplot(aes(median, wind_dir)) +
  geom_point() +
  xlab("median of wind_speed") +
  ggtitle("EWR only: wind speed by direction") #makes graph of EWR wind_speed medians by direction

LGA_only <- nycflights13_outliers %>%
  filter(!grepl("JFK|EWR", origin)) #filters out JFK and EWR

LGA_only

LGAonly_median <- LGA_only %>%
  group_by(wind_dir) %>%
  summarise(median = median(wind_speed, na.rm = TRUE)) #took median of wind_speed for each direction

LGAonly_median %>%
  arrange(desc(median)) #answer for LGA: 270 and 290

LGAonly_median %>%
  ggplot(aes(median, wind_dir)) +
  geom_point() +
  xlab("median of wind_speed") +
  ggtitle("LGA only: wind speed by direction") #makes graph of LGA wind_speed medians by direction

flights_airline <- full_join(nycflights13::flights, nycflights13::airlines) #I think this join flights and airlines...

f_a_JFKonly <- flights_airline %>%
  filter(!grepl("EWR|LGA", origin)) #filters out EWA and LGA

f_a_median_JFKonly <- f_a_JFKonly %>%
  group_by(name) %>%
  summarise(median_distance = median(distance, na.rm = TRUE)) #takes the median of the distance for each airline name

f_a_median_JFKonly <- f_a_JFKonly %>%
  group_by(name) %>%
  summarise(median_distance = median(distance, na.rm = TRUE)) %>%
  arrange(desc(median_distance)) #arranges median distances from high to low; makes a table with two columns: airline name and median distance flown from JFK airport

f_a_EWRonly <- flights_airline %>%
  filter(!grepl("JFK|LGA", origin)) #filters out JFK and LGA

f_a_select <- f_a_EWRonly %>%
  select(flight, month, name) #i want flight, month, and each airline

f_a_flight <- f_a_select %>%
  group_by(name) %>%
  distinct(month, .keep_all=TRUE)

f_a_spread <- f_a_flight %>%
  group_by(name) %>%
  spread(month,flight) #makes a wide-format data frame displaying the number of flights that leave EWR each month, from each airline

f_a_spread

babynames_2014 <- babynames %>% #identifes the ten most common male and female names in 2014
  filter(year > 2013) %>%
  arrange(desc(prop)) #male: Noah,Liam,Mason,Jacob,William,Ethan,Michael,Alexander,James,Daniel
                      #female: Emma,Olivia,Sophia,Isabella,Ava,Mia,Emily,Abigail,Madison,Charlotte

pop2014_names <- babynames %>%
  filter(name == "Noah" | name == "Liam" | name == "Mason" | name =="Jacob"| name =="William" | name =="Ethan" | name =="Michael" | name == "Alexander" | name =="James" | name == "Daniel" | name =="Emma" | name =="Olivia" | name == "Sophia" | name =="Isabella" | name =="Ava" | name =="Mia" | name =="Emily" | name =="Abigail" | name =="Madison" | name =="Charlotte")
  #only includes 2014 most popular names

pop2014_names %>%
  ggplot(aes(prop,name, color=year)) +
  geom_point() #plots frequency of most popular 2014 names since 1880

babynames_1896 <- babynames %>%
  filter(year == 1896) %>%
  arrange(desc(prop)) #Ida,Pearl,Martha,Esther <- 26th through 29th most common girls names in the year 1896

pop1896_names <- babynames_1896 %>%
  filter(name == "Ida" | name == "Pearl" | name == "Martha" | name =="Esther") #only includes 26th to 29th names

babynames_1942 <- babynames %>%
  filter(year == 1942) %>%
  arrange(desc(prop)) #Janice,Helen,Marilyn,Diane <- 26th through 29th most common girls names in 1942

pop1942_names <- babynames_1942 %>%
  filter(name == "Janice" | name == "Helen" | name == "Marilyn" | name =="Diane") #only includes 26th to 29th names

babynames_2014 <- babynames %>%
  filter(year == 2014) %>%
  arrange(desc(prop)) #Brookyln,Lily,Hannah,Layla (Did Drew mean 2014?) <- 26th through 29th most common girls names in 2014

pop2016_names <- babynames_2014 %>%
  filter(name == "Brooklyn" | name == "Lily" | name == "Hannah" | name =="Layla") #only inclues 26th to 29th names

two_years <- full_join(pop1896_names, pop1942_names) #combines 1896 and 1942 names into a table

three_years <- full_join(two_years, pop2016_names) #combines two_years with 2014 names

minus_males <- three_years %>%
  filter(!grepl("M", sex)) #gets rid of males with the female names...

boxL <- read.csv("boxL.csv") #reads file

boxL_trans <- boxL %>%
  filter(Condition == "WT_PB_ace" | Condition == "chp_PB_ace" | Condition == "boxC_PB_ace") #filters out unwanted rows

boxL_trans %>%
  ggplot(aes(Condition, AVG_NRQs)) +
  geom_bar(stat="identity")
