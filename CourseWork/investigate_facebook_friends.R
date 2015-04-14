# Read the data 
myfriends <- read.csv("birthdaysExample.csv")
head(myfriends)

#Load the tidyr package
library(tidyr)

#Split the dates field into month,day and year
myfriends <- separate(myfriends, dates, c("month", "day", "year"), sep = "/")
head(myfriends)

#Create a histogram of the months data to find how the birthdays are distributed with respect to months
library(ggplot2)
myfriends$month <- ordered(myfriends$month,levels=c(1:12))
ggplot(aes(x=month),data=myfriends,color='blue') +
  geom_histogram(color = 'black', fill = 'blue')
ggsave("birthday_monthwise.png",dpi=300,width=10,height=5)

#How many birthdays in each month?
table(myfriends$month)

# Which month contains the most number of birthdays? How many birthdays are in each month?
summary(myfriends$month)

# Based on the histogram and the summary of the months, March has the most number of birthdays.
# Summary on the month also gives the number of birthdays each month.

#Create a histogram of the days data to find how the birthdays are distributed with respect to days
myfriends$day <- ordered(myfriends$day,levels=c(1:31))
ggplot(aes(x=day),data=myfriends,color='blue') +
  geom_histogram(color = 'black', fill = 'blue')

ggsave("birthday_daywise.jpg",dpi=300,width=10,height=5)

# Which day of the year has the most number of birthdays?
table(myfriends$day)
summary(myfriends$day)
# 14th has most number of birthdays


# Do you have at least 365 friends that have birthdays on everyday of the year?
ggplot(aes(x = myfriends$day), data = myfriends) +
  geom_histogram(color = 'black', fill = 'blue') +
  facet_wrap(~month)
ggsave("birthdays_daywise_facet_monthwise.jpg",dpi=300,width=10,height=5)

#Not all days of the year in the data set have the birthdays

