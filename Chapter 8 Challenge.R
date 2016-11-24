# Create a Scatterplot Matrix using data from SearchData.csv
# Analyze five variables from this data set: Searches for the term, nba, nfl, and fifa, 
# demographic information about the percentage of adults with degrees, and average age
# Graph first using pairs
require("car")
require("psych")
require("RColorBrewer")
searchData <- read.csv("SearchData.csv")
describe(searchData)

numericSearchData <- searchData[ , c(2,3,4,8,9)]
correlationCo <- cor(numericSearchData)
round(correlationCo, 2)

sp(searchData$degree ~ searchData$fifa,
   xlab = "Percentage of Adults with Degree",
   ylab = "Search volume for term 'fifa'",
   main = "Google Search by U.S. State",
   labels = row.names(searchData))

sp(searchData$age ~ searchData$nba,
   xlab = "Average Age",
   ylab = "Search volume for term 'nba'",
   main = "Google Search by U.S. State",
   labels = row.names(searchData))

panel.hist <- function(x, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5) )
  h <- hist(x, plot = FALSE)
  breaks <- h$breaks; nB <- length(breaks)
  y <- h$counts; y <- y/max(y)
}

panel.cor <- function(x, y, digits = 2, prefix = "", cex.cor, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- abs(cor(x, y))
  txt <- format(c(r, 0.123456789), digits = digits)[1]
  txt <- paste0(prefix, txt)
  if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}

pairs(numericSearchData,
      panel = panel.smooth,
      main = "Scattorplot Matrix for Google Search Activity by U.S. State",
      diag.panel = panel.hist,
      col = brewer.pal(5, "Set3"))

pairs(numericSearchData,
      panel = panel.cor,
      main = "Scattorplot Matrix for Google Search Activity by U.S. State",
      diag.panel = panel.hist,
      col = brewer.pal(5, "Set3"))


# Then, graph using "scatterplotMatrix" from "car"
?scatterplotMatrix
scatterplotMatrix(numericSearchData,
                   col = brewer.pal(5 , "Dark2"),
                   main = "Scattorplot Matrix for Google Search Activity by U.S. State",
                  lwd = 2)
