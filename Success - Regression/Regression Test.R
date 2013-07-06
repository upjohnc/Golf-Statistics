
setwd('/Users/upjohnc/Golf Statistics')
all<-read.csv('./data/PGA Stats.csv', header=FALSE, stringsAsFactors=F)

header <- all[c(8,13,18,23,33,38,104, 56, 61), 1]
header<-append(c("Name", "Year"), header)

####Tiger####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 1]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 2]
temp3<- all[c(1,2,9,14,19,24,34,39,106, 53, 63), 3]
temp <- rbind(temp1, temp2, temp3)
tiger<-rbind(header, temp)
tiger<-as.data.frame(temp)
colnames(tiger) <- header
####Crane####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 4]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 5]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 6]
temp <- rbind(temp1, temp2, temp3)
crane<-rbind(header, temp)
crane<-as.data.frame(temp)
colnames(crane) <- header
####Baddeley####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 7]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 8]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 9]
temp <- rbind(temp1, temp2, temp3)
baddeley<-rbind(header, temp)
baddeley<-as.data.frame(temp)
colnames(baddeley) <- header
####Watson####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 10]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 11]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 12]
temp <- rbind(temp1, temp2, temp3)
watson<-rbind(header, temp)
watson<-as.data.frame(temp)
colnames(watson) <- header
####Kuchar####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 13]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 14]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 15]
temp <- rbind(temp1, temp2, temp3)
kuchar<-rbind(header, temp)
kuchar<-as.data.frame(temp)
colnames(kuchar) <- header
####Bradeley####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 16]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 17]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 18]
temp <- rbind(temp1, temp2, temp3)
bradeley<-rbind(header, temp)
bradeley<-as.data.frame(temp)
colnames(bradeley) <- header
####Duval####
temp1<- all[c(1,2,9,14,19,24,34,39,91, 57, 62), 19]
temp2<- all[c(1,2,9,14,19,24,34,39,96, 48, 53), 20]
temp3<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 21]
temp <- rbind(temp1, temp2, temp3)
duval<-rbind(header, temp)
duval<-as.data.frame(temp)
colnames(duval) <- header
####Fowler####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 22]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 23]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 24]
temp <- rbind(temp1, temp2, temp3)
fowler<-rbind(header, temp)
fowler<-as.data.frame(temp)
colnames(fowler) <- header
####Furyk####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 25]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 26]
temp3<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 27]
temp <- rbind(temp1, temp2, temp3)
furyk<-rbind(header, temp)
furyk<-as.data.frame(temp)
colnames(furyk) <- header
####Clark####
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 28]
temp2<- all[c(1,2,9,14,19,24,34,39,110, 57, 67), 29]
temp3<- all[c(1,2,9,14,19,24,34,39,101, 48, 58), 30]
temp <- rbind(temp1, temp2, temp3)
clark<-rbind(header, temp)
clark<-as.data.frame(temp)
colnames(clark) <- header
rm(temp, temp1, temp2, temp3, header)