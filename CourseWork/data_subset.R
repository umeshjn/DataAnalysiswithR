#Check the current working directory
getwd()

#Change the current working directory
setwd("C:/Umesh JN/Personal/Learning/Big Data  - Data Science/NanoDegree-Udacity/DataAnalysiswithR/code")

#Read the data from the csv file
stateinfo <- read.csv("C:/Umesh JN/Personal/Learning/Big Data  - Data Science/NanoDegree-Udacity/DataAnalysiswithR/code/stateData.csv")

#Create the subset of state region code 4 using subset function
statesubset <- subset(stateinfo,state.region==4)

#View the data
statesubset

#Create the subset of state region code 4 using different method
statesubsetdata <- stateinfo[stateinfo$state.region==4,]

#View the data
statesubsetdata
