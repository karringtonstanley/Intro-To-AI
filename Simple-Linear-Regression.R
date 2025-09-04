# Author Karrington Stanley Date: Aug 28, 2025; Purpose: Test simple linear regeression

#Get some dummy dataset
> cars <- mtcars

#Display data
> head(mtcars)

 mpg cyl disp  hp drat    wt  qsec vs am gear
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3
                  carb
Mazda RX4            4
Mazda RX4 Wag        4
Datsun 710           1
Hornet 4 Drive       1
Hornet Sportabout    2
Valiant              1



# Scatter plot on training data
> scatter.smotth(x=cars$mpg, y=cars$disp,
main="SpeedVSdistance")


# Calculate correltiaon value between mpg and disp
> cor(cars$mpg, cars$disp)
[1] -0.8475514

#Split training and testing data for regression
> training_data <- cars[1:16,]
> test_data <- cars[17:32,]

# Build a regression model
> regression_result <- lm(mpg ~ disp, data=training_data)

> regression_result

Call:
lm(formula = mpg ~ disp, data = training_data)

Coefficients:
(Intercept)         disp  
   26.28141     -0.03222  

#Predict regression function on test data
> prediction_result <- predict(regression_result, test_data)

#Results of prediction
> actual_prediction_values <- data.frame(cbind(actuals=training_data$mpg, predicteds=prediction_result))

> actual_prediciton_values

 actuals predicteds
Chrysler Imperial    21.0   12.10456
Fiat 128             21.0   23.74568
Honda Civic          22.8   23.84234
Toyota Corolla       21.4   23.99056
Toyota Corona        18.7   22.41177
Dodge Challenger     18.1   16.03541
AMC Javelin          14.3   16.48649
Camaro Z28           24.4   15.00437
Pontiac Firebird     22.8   13.39336
Fiat X1-9            19.2   23.73602
Porsche 914-2        17.8   22.40533
Lotus Europa         16.4   23.21727
Ford Pantera L       17.3   14.97215
Ferrari Dino         15.2   21.60949
Maserati Bora        10.4   16.58315
Volvo 142E           10.4   22.38277

