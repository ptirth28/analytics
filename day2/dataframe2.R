#day 2 begins
rollno=1:30
name=paste('student',1:30,sep = ':')
age=round(runif(30,18,25),0)
gender=sample(x=c('M','F'),size = 30,replace = T,prob = c(.6,.4))
marks1=rnorm(30,mean=50,sd=10)
marks2=rnorm(30,mean=80,sd=5)
df=data.frame(rollno,name,age,gender,marks1,marks2)
df
plot(density(marks1))
plot(density(marks2))
print(summary(df))
aggregate(cbind(marks1,marks2)~gender,data=df,FUN = mean)
