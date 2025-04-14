# packages installation and loading ----
install.packages("tidyverse")

install.packages("renv")

install.packages("GGally")

library(tidyverse)

library(renv)

library(GGally)

# Snapshot packages needed ----
renv::snapshot()

# Iris data loading ----
data(iris)

# Exploration of IRIS ----
head(iris)

dim(iris)

str(iris)

summary(iris)

# Data manipulation ----

Iris <- as_tibble(iris)

# transforming Iris object into csv table for reference and comply with assignment.
write.csv(Iris, "/Users/mahamadou.camara/Library/CloudStorage/OneDrive-KarolinskaInstitutet/Documents/Courses/Intermediate_R_Data_Science_and_Visualization_Techniques_beyong_base_R/Assignment_day_1/Assignement_1_Iris_project_day1/data/Iris.csv")

# Loading Iris.csv under new table

Iris_table <- read.csv("/Users/mahamadou.camara/Library/CloudStorage/OneDrive-KarolinskaInstitutet/Documents/Courses/Intermediate_R_Data_Science_and_Visualization_Techniques_beyong_base_R/Assignment_day_1/Assignement_1_Iris_project_day1/data/Iris.csv")

ggpairs(Iris_table, aes(color = Species))

renv::snapshot()


