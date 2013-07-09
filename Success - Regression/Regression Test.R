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
crane<-temp4
####Baddeley####
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
baddeley<-temp4
####Watson####
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
watson<-temp4
####Kuchar####
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
kuchar<-temp4
####Bradely####
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
bradely<-temp4
####Duval####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 1]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 2]
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 3]
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
fowler<-temp4
####Furyk####
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
furyk<-temp4
####Clark####
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
clark<-temp4

#remove temp files
rm(temp, temp1, temp2, temp3, temp4, header,i)
