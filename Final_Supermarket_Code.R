read.csv("https://raw.githubusercontent.com/FrancoFiala/GoogleFinalProject/main/supermarket_sales.csv")
read.csv('https://raw.githubusercontent.com/FrancoFiala/GoogleFinalProject/main/supermarket_sales.csv')
data <- read.csv('https://raw.githubusercontent.com/FrancoFiala/GoogleFinalProject/main/supermarket_sales.csv')
file.choose()
variable_supermercado=read.csv("/cloud/project/C:/Users/supermarket_sales.csv")

# View the whole dataset
View(variable_supermercado)

# View the first 6 rows of the dataset
head(variable_supermercado)

# View the structure of the dataset
str(variable_supermercado)

# View a brief summary of the dataset
summary(variable_supermercado)

# Review a few details of the dataset
colnames(variable_supermercado)
glimpse(variable_supermercado)

# Installing all necessary packages and libraries
install.packages("tidyverse")
library(tidyverse)
library(lubridate)
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)

# Creating a tibble
as_tibble(variable_supermercado)

# Using the rename´s function in order to rename a few columns
variable_supermercado %>%
  rename(Price=cogs)

variable_supermercado %>%
  rename(FinalPrice=Total)

# Visualizations
# 1) Scatter Plot
ggplot(data=variable_supermercado)+
       geom_point(mapping=aes(x=City,y=Total))

# 2) Bar Chart --> Payment methods, with title, subtitle and caption
ggplot(data=variable_supermercado)+
       geom_bar(mapping=aes(x=Payment))+
       labs(title="Markets: Cash Vs. Virtual Payment", subtitle="Dataset sample",  
       caption="Data collected for Kaggle")

# 3) Grid chart --> Also payment methods with colors and its varieties
ggplot(data=variable_supermercado)+
       geom_point(mapping=aes(x=Total,y=City,color=Payment))+
       facet_grid(~Payment)




