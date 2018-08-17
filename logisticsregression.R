#logistics regression

library(ISLR)

?Default
data(Default)
head(Default)
str(Default)
names(Default)
head(Default[Default$default=='Yes',])
table(Default$default)
table(Default$default,Default$student)
library(dplyr)
Default %>% group_by(student, default) %>% summarise(n())
Default %>% group_by(student,default) %>% summarise( mean(income),mean(balance))
t1 = table(Default$default, Default$student)
addmargins(t1)

#logistic model  ********************************************

logit1 = glm(default ~ income+balance+student, data = Default,family = 'binomial')
summary(logit1)

logit2 = glm(default ~ balance+student,family = 'binomial',data = Default)
summary(logit2)

(ndata1 = data.frame(balance = mean(Default$balance),student = 'Yes'))
(p1= predict(logit2, newdata = ndata1,type = 'response'))

(ndata1=  data.frame(balance = 1486, student='Yes'))
(p1=predict(logit2,newdata = ndata1,type = 'response'))









