# Create a cluster analysis using StateClusterData.csv
install.packages("cluster")
library("cluster")
stateClusterData <- read.csv("StateClusterData.csv")
View(stateClusterData)
rownames(stateClusterData) <- stateClusterData[,1]
stateClusterData[,1] <- NULL

# Use a hierarchical cluster analysis of states
hierarchy <- agnes(stateClusterData, 
                   metric = "eauclidean")

# Create a Dendrogram of the clusters, as well as put colored boxes around the dendrogram clusters, at different levels

plot(hierarchy)
rect.hclust(hierarchy,
            k = 10,
            border = 2)
