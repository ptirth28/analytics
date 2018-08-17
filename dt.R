#decision tree


library(rpart) #doing classification
library(rpart.plot)   # visulising the tree

iris
str(iris)
summary(iris)

ctree = rpart(Species ~ . ,method = 'class', data= iris)
ctree
rpart.plot(ctree, main='classififcation Tree',nn=T, type = 4,extra = 104,cex=1.2)
rpart.plot::rpart.plot(ctree, extra = 104,box.palette = "auto",branch.lty=1,shadow.col = "black",nn=FALSE)
