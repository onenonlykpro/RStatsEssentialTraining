# Challenge is to layer plots for a single variable using the variable Petal.Length from "iris" dataset from R
require("datasets")
?iris

# Create three different charts, one on top of another, for that variable
# First create a histogram of Petal.Length.
colnames(iris)
petalLength <- iris$Petal.Length
hist(petalLength, 
     breaks = 10,
     ylim = c(0,40),
     xlab = "Petal Length (in centimeters)",
     main = "Histogram of Petal Length from iris Dataset",
     col = "chartreuse4")

# Then on top of that superimpose a kernel density plot
hist(petalLength,
     breaks = 10,
     ylim = c(0,1),
     xlab = "Petal Length (in centimeters)",
     main = "Histogram of Petal Length Density from iris Dataset",
     col = "chartreuse4",
     probability = TRUE
     )
lines(density(petalLength), col = "firebrick1")


# Then underneath the both of them, put a rug or a line plot
rug(petalLength, 
    side = 1,
    col = "dodgerblue3")
