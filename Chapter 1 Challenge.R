# Challenge was to create to create 3 lists to vizualize
# x is a list of identical numbers, y is a list of sequential numbers, and z is a list of random numbers
x <- c(5,5,5,5,5)
?seq
y <- seq(from = 1, to = 6, by = 1)
?Random
z <- c(5,7,4,3,6,9,1,2,4)

# Next, I had to use RColorBrewer package to appropriate color bar charts
# x has to be colored as if they were categories
?barplot
?RColorBrewer
display.brewer.all()
barplot(x, col = brewer.pal(5, "Set3"))

# y had to be colored with a sequential scheme
barplot(y, col = brewer.pal(6, "YlGnBu"))

# z had to be colored to show divergent values (dark to dark)
barplot(z, col = brewer.pal(9, "RdBu"))
