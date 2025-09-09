> cars <- mtcars
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
> training_data <- cars[1:16,]
> test_data <- cars[17:32,]

> regression_result <- lm(mpg ~ gear, data=training_data)
> regression_result

Call:
lm(formula = mpg ~ gear, data = training_data)

Coefficients:
(Intercept)         gear  
    -0.6571       5.4857  
 prediction_result <- predict(regression_result, test_data)
> actual_prediction_values <- data.frame(cbind(actuals=training_data$mpg, predicteds=prediction_result))
> prediction_result
Chrysler Imperial          Fiat 128       Honda Civic 
         15.80000          21.28571          21.28571 
   Toyota Corolla     Toyota Corona  Dodge Challenger 
         21.28571          15.80000          15.80000 
      AMC Javelin        Camaro Z28  Pontiac Firebird 
         15.80000          15.80000          15.80000 
        Fiat X1-9     Porsche 914-2      Lotus Europa 
         21.28571          26.77143          26.77143 
   Ford Pantera L      Ferrari Dino     Maserati Bora 
         26.77143          26.77143          26.77143 
       Volvo 142E 
         21.28571 
