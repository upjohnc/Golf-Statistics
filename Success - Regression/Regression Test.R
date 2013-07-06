
setwd('/Users/upjohnc/Golf Statistics')
all<-read.csv('./data/PGA Stats.csv', header=FALSE, stringsAsFactors=F)


header <- all[c(8,13,18,23,33,38,104, 56, 61), 1]
header<-append(c("Name", "Year"), header)
header
temp1<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 1]
temp2<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 2]
temp3<- all[c(1,2,9,14,19,24,34,39,105, 57, 62), 3]
temp <- rbind(temp1, temp2, temp3)
temp
class(all[9,1])

rbind(header, temp)

all[c(1,2,8,13,18,23,33,38,104, 56, 61), 1]
all[1,]