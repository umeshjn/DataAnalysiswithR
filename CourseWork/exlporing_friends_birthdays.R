#Exploring the dataset of the friends birthday

# Read the data 
myfriends <- read.csv("birthdaysExample.csv")
head(myfriends)

#Load the tidyr package
library(tidyr)

#Working with Lubridate
install.packages("lubridate")
library(lubridate)

mydates <- mdy(myfriends$dates)

myfriends$months <- month(mydates)
myfriends$days <- day(mydates)
myfriends$years <- year(mydates) 

head(myfriends)

#Split the dates field into month,day and year
myfriends <- separate(myfriends, dates, c("month", "day", "year"), sep = "/")
head(myfriends)

#using strptime
mydates <- strptime(myfriends$dates,"%m/%d/%Y")
mydates[1]

#Create a histogram of the months data to find how the birthdays are distributed with respect to months
library(ggplot2)
myfriends$month <- ordered(myfriends$month,levels=c(1:12))
ggplot(aes(x=month),data=myfriends,color='blue') +
  geom_histogram(color = 'black', fill = 'blue')

ggsave("birthday_monthwise.png")
 
# Which month contains the most number of birthdays? How many birthdays are in each month?

summary(myfriends$month)

# Based on the histogram and the summary of the months, March has the most number of birthdays.
# Summary on the month also gives the number of birthdays each month.
 

#Create a histogram of the days data to find how the birthdays are distributed with respect to days
myfriends$day <- ordered(myfriends$day,levels=c(1:31))
ggplot(aes(x=day),data=myfriends,color='blue') +
  geom_histogram(color = 'black', fill = 'blue')

ggsave("birthday_daywise.png")

# Which day of the year has the most number of birthdays?
summary(myfriends$day)

# 14th has most number of birthdays

# Do you have at least 365 friends that have birthdays on everyday of the year?
ggplot(aes(x = myfriends$day), data = myfriends) +
  geom_histogram(color = 'black', fill = 'blue') +
  facet_wrap(~month)

ggsave("birthdays_daywise_facet_monthwise.png")
