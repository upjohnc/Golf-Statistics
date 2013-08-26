PGA Tour Statistics
========================================================



Data Munging

```r
setwd("/Users/user/Golf Statistics")
all <- read.csv("./data/PGA Stats.csv", header = FALSE, stringsAsFactors = F)
header <- all[c(8, 13, 18, 23, 33, 38, 104, 56, 61), 1]
header <- append(c("Name", "Year"), header)
```


Example of creating the player data from the csv

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
tiger
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




#remove temp files
rm(temp, temp1, temp2, temp3, temp4, temp5, header,i)

allPlayers <- rbind(baddeley, bradely, clark, crane, duval, fowler, furyk, kuchar, ohair, tiger, watson)
testData <- allPlayers[,-c(1, 2, 8, 9, 10)]
colnames(testData) <- c("drivingDistance", "drivingAccuracyPercentage", "greensRegulationPercentage", "Putting", "birdieAverage", "Money")

lm1.1 <- lm(Money ~ ., data = testData)
aicFormula <- step(lm1.1)
aicFormula

bicglm1.1 <- bic.glm(Money ~ ., data = testData, glm.family="gaussian") 
print(bicglm1.1)

lm2.1 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage  + greensRegulationPercentage  + Putting + birdieAverage, data = testData)
lm3.1 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage + Putting, data = testData)
lm4.1 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage  + greensRegulationPercentage  + Putting, data = testData)
lm5.1 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage  + Putting + birdieAverage, data = testData)
summary(lm2.1)
summary(lm3.1)
summary(lm4.1)
summary(lm5.1)


#Test without David Duval
testNoDuval <- rbind(baddeley, bradely, clark, crane, fowler, furyk, kuchar, ohair, tiger, watson) 
testNoDuval <- testNoDuval[,-c(1, 2, 8, 9, 10)]
colnames(testNoDuval) <- c("drivingDistance", "drivingAccuracyPercentage", "greensRegulationPercentage", "Putting", "birdieAverage", "Money")

lm1.2 <- lm(Money ~ ., data = testNoDuval)
aicFormula <- step(lm1.2)
aicFormula

bicglm1.2 <- bic.glm(Money ~ ., data = testNoDuval, glm.family="gaussian") 
print(bicglm1.2)

lm2.2 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage  + greensRegulationPercentage  + Putting + birdieAverage, data = testNoDuval)
lm3.2 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage + Putting, data = testNoDuval)
lm4.2 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage  + greensRegulationPercentage  + Putting, data = testNoDuval)
lm5.2 <- lm(Money ~ drivingDistance + drivingAccuracyPercentage  + Putting + birdieAverage, data = testNoDuval)
summary(lm2.2)
summary(lm3.2)
summary(lm4.2)
summary(lm5.2)
