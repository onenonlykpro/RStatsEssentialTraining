# Use R's built in dataset called ToothGrowth, and look at the supp variable. 
# Compare the means on len, which is the length of the tooth growth. 
require("datasets")
data(ToothGrowth)
aggregate(ToothGrowth$len ~ ToothGrowth$supp, FUN = mean)

# In addition, compare the medians on length.
aggregate(ToothGrowth$len ~ ToothGrowth$supp, FUN = median)