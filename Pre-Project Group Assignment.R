#Read CSV files into R.
read.csv("https://raw.githubusercontent.com/suarezmr/Raven-Analytics-Practicum/main/flinfo2021.csv")
#Turn CSV into data frame
FL2021 <- read.csv("https://raw.githubusercontent.com/suarezmr/Raven-Analytics-Practicum/main/flinfo2021.csv")
summary(FL2021)
#Import libraries to be used
library(car)
library(psych)
library(ggplot2)
library(lmtest)
library(nortest)
library(dplyr)
#Column number sequence vector
colNum <- (seq_len(ncol(FL2021)))
#Turn column vector into a data frame.
names_df <- as.data.frame(colNum)
#Add column Name column to names_df data frame.
names_df$colname <- (colnames(FL2021))
#Add variable type to names_df data frame as a column.
names_df$type <- (sapply(FL2021, class))
View(names_df)
#Change variable types as needed.
FL2021$population <- as.numeric(FL2021$population)
FL2021$Deaths <- as.numeric(FL2021$Deaths)
#Change column names as needed.
FL2021 <- FL2021 %>% rename(County = Admin2)
View(FL2021)
