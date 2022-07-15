# Load the dplyr
library(dplyr)

# Load tidyverse and read the csv as a dataframe
library(tidyverse)
mecha_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function, pass all six columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

# Using the summary function, determine the p-value and r-squared vale for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))
