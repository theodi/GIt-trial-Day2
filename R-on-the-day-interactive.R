# 2014-07-10 Training BIS Day 2
# Ulrich Atz, Open Data Institute
# Data Analysis and Visualisations in R ------------------------------

data(iris)
str(iris)

table(iris$Species)

cor(iris$Petal.Length, iris$Petal.Width)

# In R the symbol for missing values is NA

# Test the is.na function, lists all data points (not ideal)
is.na(iris) 

# Summary functions over missing 
table(is.na(iris))

# Clear objects
rm(iris)

# Clear ALL objects (careful!)
rm(list = ls())

# CTRL + L for clearing the console

# Read CSV file
# Julian & Pete row 29
# read.csv("fairdata.csv")
# Choose whatever name you want for the dataset
fair <- read.csv("fairdata.csv")

# Removing first column
fair <- fair[, -1]

# Using an option
head(fair, n = 2)
head(fair, 2)

# R bracket syntax [rows, columns]
# Blank means all rows/columns

fair[1:6, "nbaffairs"]

# A random sample of the dataset
# fair[ nrow sample, ]

# Computers are fast, and thinking hurts
# Make your code readable by being more verbose
randomrows.fair <- sample(1:nrow(fair), 5, replace = FALSE)
fair[randomrows.fair, ]

fair[sample(nrow(fair), 5), ]

# Three types of variable/function/object names
varAnalysis <- c("nbaffairs", "sex", "rate")
# var_analysis
# var.analysis
# varanalysis



