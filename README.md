# MechCar_Statistical_Analysis

# Overview

The goal of this project is to determine which variables affect the MPG of the MechaCar prototypes, determine if the different manufacturing lots are statistically different and to design a study that will compare MechaCar prototypes to other manufacturers.

## Linear Regression to Predict MPG

![linear](https://github.com/RyanJeffery21/MechCar_Statistical_Analysis/blob/f72db4f3c3db10481189d07dadd261cefea1cd9b/Resources/linear%20regression.png)

- Vehicle length and Ground Clearance appear to show an effect on the MPG of the MechaCar prototypes as shown by their p-values in the picture above.

- The slope of the linear model has a p-value of 5.35e-11 which indicates that the null hypothesis must be rejected and the relationship between these variables does have an impact on the MPG of the vehicles.

## Summary Statistics on Suspension Coils

![lot stats](https://github.com/RyanJeffery21/MechCar_Statistical_Analysis/blob/f72db4f3c3db10481189d07dadd261cefea1cd9b/Resources/lot%20stats.png)
![lot summary](https://github.com/RyanJeffery21/MechCar_Statistical_Analysis/blob/f72db4f3c3db10481189d07dadd261cefea1cd9b/Resources/lot%20summary.png)

- The overall variance across all three lots is acceptable, but lot 3 has a variance that is well over the acceptable allowance.

## T-Tests on Suspension Coils

![ttestlots](https://github.com/RyanJeffery21/MechCar_Statistical_Analysis/blob/f72db4f3c3db10481189d07dadd261cefea1cd9b/Resources/t-test1.png)

An overall review of the T-test results show that they are not statistically different from the population mean, and the p-value is not low enough to reject the null.

![lot1](https://github.com/RyanJeffery21/MechCar_Statistical_Analysis/blob/f72db4f3c3db10481189d07dadd261cefea1cd9b/Resources/lot1.png)

A review of lot 1 also shows no statistical difference.

![lot2](https://github.com/RyanJeffery21/MechCar_Statistical_Analysis/blob/f72db4f3c3db10481189d07dadd261cefea1cd9b/Resources/lot2.png)

Lot 2 also has low statistical difference and not a low enough p-value.

![lot3](https://github.com/RyanJeffery21/MechCar_Statistical_Analysis/blob/f72db4f3c3db10481189d07dadd261cefea1cd9b/Resources/lot3.png)

Lot 3 does show a slight statisical difference and the p-value is approaching a low enough number for us to reject the null hypothesis.  This lot appears to have issues and should be further analyzed.

## Study Design: MechaCar Vs Competetion

To determine if MechaCar is priced correctly and will entice buyers through its value, we would need to gather information about the competetion's vehicles features.  Features are what sells a car and make it more valuable over time, things like safety ratings, technology packages, AWD vs FWD vs RWD, maintenace cost, and MPG would all need to be gathered for the competetions vehicles.  Analyzing these features with linear regression against their selling price would help us determine which features garner a higher selling price and compare this to MechaCars prices and features.  


