setwd('/Users/upjohnc/Golf Statistics')
all<-read.csv('./data/Winning Stats.csv', header=FALSE, stringsAsFactors=F)


####Ohair####
temp1<- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313), 31]
temp2<- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313), 32]
temp3<- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313), 33]
temp4<- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313), 34]
temp <- rbind(temp1, temp2, temp3, temp4)
temp5<-as.data.frame(temp, stringsAsFactors=F)
temp5
#remove $ , % from data
for (i in grep("--", temp5)) temp5[,i]<-gsub("--", "0", temp5[,i])
for (i in grep("\\$", temp5)) temp5[,i]<-gsub("\\$", "", temp5[,i])
for (i in grep(",", temp5)) temp5[,i]<-gsub(",", "", temp5[,i])
for (i in grep("\\$", temp5)) temp5[,i]<-gsub("\\$", "", temp5[,i])
for (i in 1:27) temp5[,i] <- as.numeric(temp5[,i])
ohair<-t(temp5)
colnames(ohair)<- c("2013", "2012", "2011", "2010")
boxplot(ohair)
summary(ohair)
ohair
ohairTot <- c(268614, 1160981, 1483948, 1859040)

ohair[,4]/ohairTot[4]
ohair[,2]/ohairTot[2]
t(ohair)/ohairTot