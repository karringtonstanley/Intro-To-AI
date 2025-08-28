# Author Karrington Stanley Date: Aug 28, 2025; Purpose: Test simple linear regeression

#Get some dummy dataset
cars <- mtcars

#Scatter plot on training data
scatter.smooth(x=cars$mpg, y=cars$disp, main="SpeedVSdistance")