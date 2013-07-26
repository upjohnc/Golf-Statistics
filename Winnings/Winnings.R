setwd('/Users/upjohnc/Golf Statistics')
all<-read.csv('./data/Winning Stats.csv', header=FALSE, stringsAsFactors=F)


####Ohair####
temp1<- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313, 324), 31]
temp2<- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313, 324), 32]
temp3<- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313, 324), 33]
temp4<- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313, 324), 34]
temp <- rbind(temp1, temp2, temp3, temp4)
temp5<-as.data.frame(temp, stringsAsFactors=F)
temp5
#remove $ , % from data
for (i in grep("--", temp5)) temp5[,i]<-gsub("--", "0", temp5[,i])
for (i in grep("\\$", temp5)) temp5[,i]<-gsub("\\$", "", temp5[,i])
for (i in grep(",", temp5)) temp5[,i]<-gsub(",", "", temp5[,i])
for (i in grep("\\$", temp5)) temp5[,i]<-gsub("\\$", "", temp5[,i])
for (i in 1:ncol(temp5)) temp5[,i] <- as.numeric(temp5[,i])
ohair<-t(temp5)
colnames(ohair)<- c("2013", "2012", "2011", "2010")
ohair
boxplot(ohair)
summary(ohair)
ohairTot <- apply(ohair, 2,function(x) sum(x, na.rm=T))
o12<- ohair[,2]/ohairTot[2]
o12<-o12[order(o12, decreasing = T)]
sum(o12[1:3])
o12[1:3]
o12
o11<-ohair[,3]/ohairTot[3]
o11<-o11[order(o11, decreasing = T)]
sum(o11[1:3])
o11