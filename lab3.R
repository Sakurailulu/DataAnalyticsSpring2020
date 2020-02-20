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
# Building Regression Decision Tree that #predicts the total sleeping
# hours of the mamals based on the other #variables available on the dataset
help("rpart") # Read the documentation for the rpart() function. 
sleepModel_1 <- rpart(sleep_total ~ ., data=mSleepDF1, method = "anova")
# method we are using here is anova becuase our target here is sleep_total is a numerical one.
sleepModel_1
# let's visualize this using rpart.plot()
help("rpart.plot")
rpart.plot(sleepModel_1, type = 3, fallen.leaves = TRUE)
# type = 3, Draw separate split labels for the left and right directions.See the documentation 
#fallen.leaves = TRUE,  Default TRUE to position the leaf nodes at the bottom of the graph. 
#It can be helpful to use FALSE if the graph is too crowded and the text size is too small.
rpart.plot(sleepModel_1, type = 3,digits = 3, fallen.leaves = TRUE) # with 3 digits 
rpart.plot(sleepModel_1, type = 3,digits = 4, fallen.leaves = TRUE) 
