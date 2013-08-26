PGA Tour Statistics
========================



Data Munging
---------------------------


```r
all <- read.csv("./data/PGA Stats.csv", header = FALSE, stringsAsFactors = F)
header <- all[c(8, 13, 18, 23, 33, 38, 104, 56, 61), 1]
header <- append(c("Name", "Year"), header)
```


#### Example of creating the player data from the csv

```r
#### Tiger####
temp1 <- all[c(1, 2, 9, 14, 19, 24, 34, 39, 105, 57, 62), 1]
temp2 <- all[c(1, 2, 9, 14, 19, 24, 34, 39, 110, 57, 67), 2]
temp3 <- all[c(1, 2, 9, 14, 19, 24, 34, 39, 106, 53, 63), 3]
temp <- rbind(temp1, temp2, temp3)
temp4 <- rbind(header, temp)
temp4 <- as.data.frame(temp, stringsAsFactors = F)
colnames(temp4) <- header
# remove $ , % from data
for (i in grep("%", temp4)) temp4[, i] <- gsub("%", "", temp4[, i])
for (i in grep("\\$", temp4)) temp4[, i] <- gsub("\\$", "", temp4[, i])
for (i in grep(",", temp4)) temp4[, i] <- gsub(",", "", temp4[, i])
for (i in 2:11) temp4[, i] <- as.numeric(temp4[, i])
tiger <- temp4
```

```
##              Name Year Driving Distance Driving Accuracy Percentage
## temp1 Tiger Woods 2013            291.6                       61.85
## temp2 Tiger Woods 2012            297.4                       63.93
## temp3 Tiger Woods 2011            293.7                       48.90
##       Greens in Regulation Percentage Strokes Gained - Putting
## temp1                           67.55                    0.835
## temp2                           67.58                    0.332
## temp3                           67.74                    0.258
##       Birdie Average Scoring Average Scoring Average (Actual)
## temp1           4.00           68.65                    70.09
## temp2           3.97           68.90                    69.78
## temp3           3.92           70.46                    70.77
##       FedExCup Season Points Money Leaders
## temp1                   3059       7687119
## temp2                   2269       6133158
## temp3                    318        660238
```




****
Set Testing Data
---------------------------

```r
allPlayers <- rbind(baddeley, bradely, clark, crane, duval, fowler, furyk, kuchar, 
    ohair, tiger, watson)
testData <- allPlayers[, -c(1, 2, 8, 9, 10)]
colnames(testData) <- c("drivingDistance", "drivingAccuracyPercentage", "greensRegulationPercentage", 
    "Putting", "birdieAverage", "Money")
```

******
Test Regression Models
---------------------------
### AIC

```r
aicFormula <- step(lm1.1)
```

```
## Start:  AIC=968.3
## Money ~ drivingDistance + drivingAccuracyPercentage + greensRegulationPercentage + 
##     Putting + birdieAverage
## 
##                              Df Sum of Sq      RSS AIC
## - greensRegulationPercentage  1  9.82e+10 5.59e+13 966
## <none>                                    5.58e+13 968
## - birdieAverage               1  6.48e+12 6.23e+13 970
## - drivingAccuracyPercentage   1  7.21e+12 6.30e+13 970
## - drivingDistance             1  1.14e+13 6.72e+13 973
## - Putting                     1  1.87e+13 7.45e+13 976
## 
## Step:  AIC=966.4
## Money ~ drivingDistance + drivingAccuracyPercentage + Putting + 
##     birdieAverage
## 
##                             Df Sum of Sq      RSS AIC
## <none>                                   5.59e+13 966
## - birdieAverage              1  7.12e+12 6.30e+13 968
## - drivingAccuracyPercentage  1  1.47e+13 7.06e+13 972
## - drivingDistance            1  1.82e+13 7.41e+13 974
## - Putting                    1  1.86e+13 7.45e+13 974
```

******
### BIC


```
Posterior probabilities(%): 
  drivingDistance  drivingAccuracyPercentage greensRegulationPercentage       Putting      birdieAverage       
            84.6                       75.0                       28.3          94.7                59.0 

Coefficient posterior expected values: 
 (Intercept) drivingDistance drivingAccuracyPercentage  greensRegulationPercentage  Putting birdieAverage  
   -24235511        69202                       85475                       17339   1898624      -20312 
```
#### Compare Different Inputs
Test model differences for different inputs

```r
lm2.1 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage + greensRegulationPercentage + 
    Putting + birdieAverage, data = testData)
lm3.1 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage + Putting, data = testData)
lm4.1 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage + greensRegulationPercentage + 
    Putting, data = testData)
lm5.1 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage + Putting + 
    birdieAverage, data = testData)
```


```
## 
## Call:
## lm(formula = Money ~ drivingDistance + drivingAccuracyPercentage + 
##     greensRegulationPercentage + Putting + birdieAverage, data = testData)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -1670499  -798762  -261860   627231  3639490 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)   
## (Intercept)                -28322090    9875466   -2.87   0.0078 **
## drivingDistance                84349      35235    2.39   0.0236 * 
## drivingAccuracyPercentage     120383      63298    1.90   0.0675 . 
## greensRegulationPercentage    -19456      87617   -0.22   0.8259   
## Putting                      2108450     688569    3.06   0.0048 **
## birdieAverage                 -29622      16432   -1.80   0.0822 . 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1410000 on 28 degrees of freedom
## Multiple R-squared:  0.498,	Adjusted R-squared:  0.408 
## F-statistic: 5.55 on 5 and 28 DF,  p-value: 0.00113
```

```
## 
## Call:
## lm(formula = Money ~ drivingDistance + drivingAccuracyPercentage + 
##     Putting, data = testData)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -2600691  -880012  -320278   614847  3875992 
## 
## Coefficients:
##                            Estimate Std. Error t value Pr(>|t|)    
## (Intercept)               -32419796    8787514   -3.69  0.00089 ***
## drivingDistance               93941      25638    3.66  0.00095 ***
## drivingAccuracyPercentage    118014      41124    2.87  0.00746 ** 
## Putting                     1842717     689698    2.67  0.01208 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1450000 on 30 degrees of freedom
## Multiple R-squared:  0.433,	Adjusted R-squared:  0.376 
## F-statistic: 7.63 on 3 and 30 DF,  p-value: 0.000618
```

```
## 
## Call:
## lm(formula = Money ~ drivingDistance + drivingAccuracyPercentage + 
##     greensRegulationPercentage + Putting, data = testData)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -2197412  -983424  -226918   557561  3915636 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)   
## (Intercept)                -34557742    9601983   -3.60   0.0012 **
## drivingDistance               107013      34169    3.13   0.0039 **
## drivingAccuracyPercentage     146553      63957    2.29   0.0294 * 
## greensRegulationPercentage    -52249      88971   -0.59   0.5616   
## Putting                      1903348     704956    2.70   0.0115 * 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1470000 on 29 degrees of freedom
## Multiple R-squared:  0.44,	Adjusted R-squared:  0.362 
## F-statistic: 5.69 on 4 and 29 DF,  p-value: 0.00166
```

```
## 
## Call:
## lm(formula = Money ~ drivingDistance + drivingAccuracyPercentage + 
##     Putting + birdieAverage, data = testData)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -1653281  -939893  -304012   673727  3618302 
## 
## Coefficients:
##                            Estimate Std. Error t value Pr(>|t|)   
## (Intercept)               -27400822    8813604   -3.11   0.0042 **
## drivingDistance               79111      25743    3.07   0.0046 **
## drivingAccuracyPercentage    109545      39639    2.76   0.0098 **
## Putting                     2092090     673302    3.11   0.0042 **
## birdieAverage                -30379      15808   -1.92   0.0645 . 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1390000 on 29 degrees of freedom
## Multiple R-squared:  0.497,	Adjusted R-squared:  0.428 
## F-statistic: 7.16 on 4 and 29 DF,  p-value: 0.000387
```

*****
Test Regression Models without Duval's Rows
-----------------
Remove David Duval's results becuase they are poor and skew the models



### AIC

```r
aicFormula <- step(lm1.2)
```

```
## Start:  AIC=872.5
## Money ~ drivingDistance + drivingAccuracyPercentage + greensRegulationPercentage + 
##     Putting + birdieAverage
## 
##                              Df Sum of Sq      RSS AIC
## <none>                                    3.52e+13 873
## - greensRegulationPercentage  1  5.69e+12 4.09e+13 875
## - drivingAccuracyPercentage   1  1.04e+13 4.56e+13 879
## - drivingDistance             1  1.15e+13 4.68e+13 879
## - birdieAverage               1  1.57e+13 5.09e+13 882
## - Putting                     1  3.18e+13 6.71e+13 890
```

```
## 
## Call:
## lm(formula = Money ~ drivingDistance + drivingAccuracyPercentage + 
##     greensRegulationPercentage + Putting + birdieAverage, data = testNoDuval)
## 
## Coefficients:
##                (Intercept)             drivingDistance  
##                  -47597856                       93227  
##  drivingAccuracyPercentage  greensRegulationPercentage  
##                     156075                      199216  
##                    Putting               birdieAverage  
##                    3544187                      -82081
```

****
### BIC


```
Posterior probabilities(%): 
  drivingDistance  drivingAccuracyPercentage greensRegulationPercentage       Putting      birdieAverage       
             82.1                     80.1                       64.8          100.0               95.2 

Coefficient posterior expected values: 
 (Intercept) drivingDistance drivingAccuracyPercentage  greensRegulationPercentage  Putting birdieAverage  
  -42365071           85704                   140407                      167625    3350533        -73739 
```
****
#### Compare Different Inputs
Test model differences for different inputs


