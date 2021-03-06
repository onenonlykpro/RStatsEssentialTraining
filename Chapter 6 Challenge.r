# Create grouped boxplots using an external data set called SearchData.csv
# Look at the commonality of the search term for nfl by region
searchData <- read.csv("SearchData.csv")
require("psych")
describe(searchData)

require("RColorBrewer")
display.brewer.all()
boxplot(searchData$nfl ~ searchData$region,
  col = brewer.pal(4, "Set2"))
