# Load the dplyr
library(dplyr)

# Load tidyverse and read the csv as a dataframe
library(tidyverse)
mecha_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function, pass all six columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

# Using the summary function, determine the p-value and r-squared vale for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))

# Deliverable 2
# load the suspension_coil file as a table

coil_table <- read.csv(file='Suspension_Coil.csv', check.names= F, stringsAsFactors = F)

# Create a total_summary using the summarize() function to get the mean, etc of PSI column

total_summary <- coil_table %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep')
# Create a lot_summary df using groupby and summarize
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=median(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        Std_Dev_PSI=sd(PSI),
                                                                        Num_Coil=n(), .groups = 'keep')

# Deliverable 3

#1
t.test(coil_table$PSI,mu=1500)

#2

lot1<- subset(coil_table, Manufacturing_Lot=="Lot1")
lot2<- subset(coil_table, Manufacturing_Lot=="Lot2")
lot3<- subset(coil_table, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
