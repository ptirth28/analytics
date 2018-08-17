gender = sample(x=c('Male','Female'),size = 1000,replace = T,prob = c(0.5,0.5))
buy = sample(x=c('Buy','NotBuy'),size = 1000,replace = T,prob = c(.5,.5))
married = sample(x=c('Married','Single'),size = 1000,replace = T,prob = c(.3,.7))
age = ceiling(runif(1000,22,30))
course = sample(x=c('Phd','MBA','BBA'),size=1000,replace = T,prob = c(.3,.4,.3))
student = data.frame(buy,gender,married,age,course)
head(student)

library(rpart) #doing classification
library(rpart.plot)   # visulising the tree

ctree = rpart(buy ~ ., data= student)
ctree
rpart.plot(ctree)
rpart.plot::rpart.plot(ctree, extra = 104,box.palette = "auto",branch.lty=1,shadow.col = "black",nn=FALSE)
  
#Prediction for some data frame*********************************
ndata1 = data.frame(gender='Female',age=25,course='BBA',married='Single')
(p1 = predict(ctree,newdata = ndata1,type = 'class'))
(p2 = predict(ctree,newdata = ndata1,type = 'prob'))
cbind(ndata1,p1,p2)
#*******************************************************************

ctree2 = rpart(buy ~ .,data = student,cp=-1)
ctree2
rpart.plot(ctree2,nn=T,cex=.8)
printcp(ctree2)

ctree2b = prune(ctree, cp=.00148454)  #cp for the least error
ctree2b
printcp(ctree2b)
rpart.plot(ctree2b,nn=T,cex = .75)


ndata2 = data.frame(gender='Female','Male',age=c(25,30),course=c('BBA',married='Single'))
(p1 = predict(ctree2b,newdata = ndata2,type = 'class'))
(p2 = predict(ctree2b,newdata = ndata2,type = 'prob'))
cbind(ndata2,p1,p2)

