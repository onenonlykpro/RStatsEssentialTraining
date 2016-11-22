# Transform variable x in the dataset xskew to remove the outliers.  Change them, do not delete them.
require("datasets")
xskew <- read.csv("xskew.csv")
outlierVariable <- xskew$x
outlierVariable1 <- log(outlierVariable) #Takes the nautral logarithm (ln) of x
outlierVariable2 <- log10(outlierVariable) #Takes the base-10 logarithm of x
outliervariable3 <- exp(outlierVariable) #Raises the constant e to the power of x
outlierVariable4 <- sqrt(outlierVariable) #Take square of each item in x
outlierVariable5 <- (outlierVariable)^2 #Squares each item in x
outlierVariable6 <- (outlierVariable)^3 #Cubes each item in x

# Check your work with a histogram and a boxplot until you don't have any more outliers marked on the boxplot.
boxplot(outlierVariable)
hist(outlierVariable, 
     breaks = 20,
     col = "firebrick3")
boxplot(outlierVariable1)
boxplot(outlierVariable2)
boxplot(outliervariable3)
boxplot(outlierVariable4)
boxplot(outlierVariable5)
boxplot(outlierVariable6) #Winner winner chicken dinner
hist(outlierVariable6, 
     breaks = 20,
     col = "dodgerblue3")
