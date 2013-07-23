setwd('/Users/upjohnc/Golf Statistics')
all<-read.csv('./data/PGA Stats.csv', header=FALSE, stringsAsFactors=F)
header <- all[c(8,13,18,23,33,38,104, 56, 61), 1]
header<-append(c("Name", "Year"), header)

####Tiger####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 1]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 2]
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 3]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
tiger<-temp4
tiger

####Crane####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 4]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 5]
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 6]
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
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 9]
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
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 12]
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
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 15]
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
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 18]
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
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 19]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 20]
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 21]
temp <- rbind(temp1, temp2, temp3)
temp4<-rbind(header, temp)
temp4<-as.data.frame(temp, stringsAsFactors=F)
colnames(temp4) <- header
#Duval hasn't made a cut in 2013 so need to add some NA
temp4[1,10:11] <- NA
#remove $ , % from data
for (i in grep("%", temp4)) temp4[,i]<-gsub("%", "", temp4[,i])
for (i in grep("\\$", temp4)) temp4[,i]<-gsub("\\$", "", temp4[,i])
for (i in grep(",", temp4)) temp4[,i]<-gsub(",", "", temp4[,i])
for (i in 2:11) temp4[,i] <- as.numeric(temp4[,i])
duval<-temp4

####Fowler####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 22]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 23]
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 24]
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
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 27]
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
ohair
tiger
clark
#remove temp files
rm(temp, temp1, temp2, temp3, temp4, header,i)