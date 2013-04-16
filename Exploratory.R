http://www.pgatour.com/players/player.08793.tiger-woods.html/season/#uber
  
con <- url("http://www.pgatour.com/players/player.08793.tiger-woods.html/season/#uber") 
tiger.stats <- readLines(con)
close(con)
head(tiger.stats)
class(tiger.stats)
tiger.stats


http://espn.go.com/golf/player/results/_/id/462/tiger-woods


theurl <- "http://espn.go.com/golf/player/results/_/id/462/tiger-woods"
tables <- readHTMLTable(theurl)
theurl <- "http://en.wikipedia.org/wiki/Brazil_national_football_team"
tables <- readHTMLTable(theurl)


getwd()
setwd("/Users/upjohnc/Golf Statistics/")

files<- list.files("./data")
  data.list <- list(NULL)
for (i in files){
  assign(paste0(strsplit(i, "\\.")[[1]][[1]], "data"), read.delim(eval(paste0("./data/", i))))
  data.list<-c(data.list, paste0(strsplit(i, "\\.")[[1]][[1]], "data"))
}

names(tigerdata)[1]<- "date"
tigerdata$date <- as.Date(tigerdata$date, "%m/%d/%Y")
summary(tigerdata$date)

names(tigerdata)[5]<- "money"

tigerdata$money <- as.numeric(gsub("^\\$", "", as.character(tigerdata$money)))

 tigerdata$money[is.na(temp)] <- 0
tigerdata$money[1] > tigerdata$money[65]
tigerdata$money[65]
as.character(tigerdata$date, "%Y") > 2012
hist(tigerdata$money[as.character(tigerdata$date, "%Y") == 2013], breaks=10)
plot(tigerdata$money)
summary(tigerdata$date)
tigerplot2013 <- tigerdata$money[as.character(tigerdata$date, "%Y") == 2013]
tigerplot2012 <- tigerdata$money[as.character(tigerdata$date, "%Y") == 2012]
tigerplot2011 <- tigerdata$money[as.character(tigerdata$date, "%Y") == 2011]
tigerplot2010 <- tigerdata$money[as.character(tigerdata$date, "%Y") == 2010]
tigerplot2009 <- tigerdata$money[as.character(tigerdata$date, "%Y") == 2009]
boxplot(tigerplot2013, tigerplot2012, tigerplot2011, tigerplot2010, tigerplot2009)
summary(tigerdata$money)