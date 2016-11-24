# Compare proportions across several different groups using results from the 2011 MLB season.
# Look at an outcome that is home wins as a proportion of all wins.
# Compare all 30 teams at once
mlbData <- read.csv("mlb2011.csv", header = TRUE)
View(mlbData)
homeWinsTable <- prop.test(mlbData$HomeWins, mlbData$AllWins, conf.level = .90) #Always have successes followed by trails in prop.test function
homeWinsTable

# Look at just the highest and lowest. 
# That is the teams who won the highest percentage of games at home
# and, the team that won the lowest percentage of their wins at home
sortedMLBData <- mlbData[order(mlbData$HomeAdv, decreasing = TRUE), ]
sortedMLBData
highestAndLowest <- sortedMLBData[c(1,30), ]
highestAndLowestTest <- prop.test(highestAndLowest$HomeWins, highestAndLowest$AllWins, conf.level = .90)
highestAndLowestTest
