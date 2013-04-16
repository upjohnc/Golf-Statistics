http://www.pgatour.com/players/player.08793.tiger-woods.html/season/#uber
  
con <- url("http://www.pgatour.com/players/player.08793.tiger-woods.html/season/#uber") 
tiger.stats <- readLines(con)
close(con)
head(tiger.stats)
class(tiger.stats)
tiger.stats


http://espn.go.com/golf/player/results/_/id/462/tiger-woods

con <- url("http://espn.go.com/golf/player/results/_/id/462/tiger-woods") 
tiger.stats <- readLines(con)
close(con)
head(tiger.stats)
class(tiger.stats)
length(tiger.stats)
strsplit(tiger.stats, "RECENT 2013 PGA TOURNAMENTS")

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

library(RCurl)
library(XML)

theurl <- "http://en.wikipedia.org/wiki/Brazil_national_football_team"
webpage <- getURL(theurl)
webpage <- readLines(tc <- textConnection(webpage)); close(tc)

pagetree <- htmlTreeParse(webpage, error=function(...){}, useInternalNodes = TRUE)

# Extract table header and contents
tablehead <- xpathSApply(pagetree, "//*/table[@class='wikitable sortable']/tr/th", xmlValue)
results <- xpathSApply(pagetree, "//*/table[@class='wikitable sortable']/tr/td", xmlValue)

# Convert character vector to dataframe
content <- as.data.frame(matrix(results, ncol = 8, byrow = TRUE))

# Clean up the results
content[,1] <- gsub("Â ", "", content[,1])
tablehead <- gsub("Â ", "", tablehead)
names(content) <- tablehead