library(rpart)
library(ggplot2)
library(rpart.plot)
data("msleep")
str(msleep)
help("msleep")
str(data)
mSleepDF1 <- msleep[,c(3,6,10,11)] 
# observe the structure of the mSleepDF 
str(mSleepDF1)
head(mSleepDF1)
