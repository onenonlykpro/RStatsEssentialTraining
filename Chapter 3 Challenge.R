# Open up the dataset mtcars
require("datasets")
require("psych")
?mtcars
mpg <- mtcars$mpg
horsepower <- mtcars$hp
quarterMileTime <- mtcars$qsec

# Calculate descriptive statistics for three variables. Miles per gallon, horsepower, and qsec.
# For each of the three variables, calculate four the mean, the standard deviation, the skewness and kurtosis.
describe(mpg)
describe(horsepower)
describe(quarterMileTime)
