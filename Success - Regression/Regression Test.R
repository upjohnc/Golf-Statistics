library(BMA)

setwd('~/Golf Statistics')
all<-read.csv('./data/PGA Stats.csv', header=FALSE, stringsAsFactors=F)
header <- all[c(8,13,18,23,33,38,104, 56, 61), 1]
header<-append(c("Name", "Year"), header)


####Tiger####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 1]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 2]
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 3]
temp <- rbind(temp1, temp2, temp3)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:ncol(temp4)) temp4[,i] <- as.numeric(temp4[,i])
tiger<-temp4


####Crane####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 4]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 5]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 6]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
crane<-temp4

####Baddeley####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 7]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 8]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 9]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
baddeley<-temp4

####Watson####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 10]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 11]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 12]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
watson<-temp4

####Kuchar####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 13]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 14]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 15]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
kuchar<-temp4

####Bradely####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 16]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 17]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 18]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
bradely<-temp4

####Duval####
temp1<- all[c(1,2,9,14,19,24,34,39, 101, 53, 58), 19]
temp2<- all[c(1,2,9,14,19,24,34,39, 96, 48, 53), 20]
temp3<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 21]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
duval<-temp4

####Fowler####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 22]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 23]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 24]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
fowler<-temp4

####Furyk####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 25]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 26]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 27]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
furyk<-temp4

####Clark####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 28]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 29]
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 30]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
clark<-temp4

####Ohair####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 31]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 32]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 33]
temp4<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 34]
temp <- rbind(temp1, temp2, temp3, temp4)
temp5<-rbind(header, temp)
temp5<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp5) <- header
#remove $ , % from data
for (i in grep("%", temp5)) temp5[,i]<-gsub("%", "", temp5[,i])
for (i in grep("\\$", temp5)) temp5[,i]<-gsub("\\$", "", temp5[,i])
for (i in grep(",", temp5)) temp5[,i]<-gsub(",", "", temp5[,i])
for (i in 2:11) temp5[,i] <- as.numeric(temp5[,i])
ohair<-temp5

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
