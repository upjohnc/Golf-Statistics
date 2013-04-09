http://www.pgatour.com/players/player.08793.tiger-woods.html/season/#uber
  
con <- url("http://www.pgatour.com/players/player.08793.tiger-woods.html/season/#uber") 
tiger.stats <- readLines(con, n=150L)
close(con)
head(tiger.stats)