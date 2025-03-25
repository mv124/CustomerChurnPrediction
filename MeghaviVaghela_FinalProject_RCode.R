# Author: Meghavi Vaghela
# About: Customer Churn Prediction 

# Load important libraries
library(data.table)
library(ggplot2)


# Load data set
df <- fread("Telco-Customer-Churn.csv")

# View data set dimensions and summary statistics
dim(df)
head(df)
summary(df)

# Check for rows with NULL values in a data frame
incomplete_rows <- !complete.cases(df)

# Print the rows with NULL values
df[incomplete_rows, ]

# Neglect rows with NULL values because there are only 11 rows out of 7043
# Rows with NULL value percentage: 0.15%
df <- df[complete.cases(df), ]

# 
