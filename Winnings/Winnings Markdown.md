PGA Tour Winnings
========================

Data Munging
---------------------------

```r
all <- read.csv("./data/Winning Stats.csv", header = FALSE, stringsAsFactors = F)

summaryStat <- data.frame(Name = character(), Three2013 = as.numeric(character()), 
    Six2013 = as.numeric(character()), Three2012 = as.numeric(character()), 
    Six2012 = as.numeric(character()), Three2011 = as.numeric(character()), 
    Six2011 = as.numeric(character()), stringsAsFactors = FALSE)
```

****
#### Example of creating the player data from the csv

```r
#### Tiger####
temp1 <- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 
    181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313, 324), 1]
temp2 <- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 
    181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313, 324), 2]
temp3 <- all[c(27, 38, 49, 60, 71, 82, 93, 104, 115, 126, 137, 148, 159, 170, 
    181, 192, 203, 214, 225, 236, 247, 258, 269, 280, 291, 302, 313, 324), 3]
temp <- rbind(temp1, temp2, temp3)
temp5 <- as.data.frame(temp, stringsAsFactors = F)

# remove $ , % from data
for (i in grep("--", temp5)) temp5[, i] <- gsub("--", "0", temp5[, i])
for (i in grep("\\$", temp5)) temp5[, i] <- gsub("\\$", "", temp5[, i])
for (i in grep(",", temp5)) temp5[, i] <- gsub(",", "", temp5[, i])
for (i in grep("\\$", temp5)) temp5[, i] <- gsub("\\$", "", temp5[, i])
for (i in 1:ncol(temp5)) temp5[, i] <- as.numeric(temp5[, i])
tiger <- t(temp5)
colnames(tiger) <- c("2013", "2012", "2011")

tigerTot <- apply(tiger, 2, function(x) sum(x, na.rm = T))
tiger13 <- tiger[, 1]/tigerTot[1]
tiger13 <- tiger13[order(tiger13, decreasing = T)]
tiger12 <- tiger[, 2]/tigerTot[2]
tiger12 <- tiger12[order(tiger12, decreasing = T)]
tiger11 <- tiger[, 3]/tigerTot[3]
tiger11 <- tiger11[order(tiger11, decreasing = T)]
summaryStat[1, ] <- c("Tiger", sum(tiger13[1:3]), sum(tiger13[1:6]), sum(tiger12[1:3]), 
    sum(tiger12[1:6]), sum(tiger11[1:3]), sum(tiger11[1:6]))
```




****
Summary of Results
-----------------

Average Percentage of Total Winnings from __3__ Tournaments in a Year
```
65.5%
```
Average Percentage of Total Winnings from **6** Tournaments in a Year
```
83.2%
```
