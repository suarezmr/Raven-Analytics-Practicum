#Set up working directory and read CSV file into R as a data frame.
setwd("/Users/remington/Downloads")
read.csv("Flinfo2021.csv")
mydata <- read.csv("Flinfo2021.csv")
summary(mydata)
#Import libraries to be used
library(car)
library(psych)
library(ggplot2)
library(lmtest)
library(nortest)
library(dplyr)
#Column number sequence vector
colNum <- (seq_len(ncol(mydata)))
#Turn column vector into a data frame.
names_df <- as.data.frame(colNum)
#Add column Name column to names_df data frame.
names_df$colname <- (colnames(mydata))
#Add variable type to names_df data frame as a column.
names_df$type <- (sapply(mydata, class))
View(names_df)
#Change variable types as needed.
mydata$population <- as.numeric(mydata$population)
mydata$Deaths <- as.numeric(mydata$population)
mydata$Confirmed <- as.numeric(mydata$Confirmed)
#Change column names as needed.
mydata <- mydata %>% rename(County = Admin2)
View(mydata)
