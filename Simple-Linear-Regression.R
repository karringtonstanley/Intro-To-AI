# Author Karrington Stanley Date: Aug 28, 2025; Purpose: Test simple linear regeression

#Get some dummy dataset
cars <- mtcars

# Scatter plot on training data
scatter.smotth(x=cars$mpg, y=cars$disp,
main="SpeedVSdistance")

# Calculate correltiaon value between mpg and disp
cor(cars$mpg, cars$disp)
[1] -0.8475514
