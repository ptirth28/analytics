#datafrmae
#rollno, name, age, gender, course, marks1, marks2
(rollno=1:69)
(name=paste('student',1:69,sep='-'))
?runif
set.seed(1234)
(age = round(runif(69,18,25),0))
(height=round(runif(50,150,200),0))
set.seed(1)
(gender=sample(x=c('M','F'),size=69,replace=T,prob = c(.7,.3)))
table(gender)
prop.table(table(gender))   #prob. of male and female
rep('M',4)
gender2= c(rep('M',13),rep('F',69-13))
table(gender2)
prop.table(table(gender2))
(marks1=rnorm(69,mean=60,sd=5))
sd(marks1)  #standard devation of marks1
mean(marks1)  #mean of marks1
plot(density(marks1))    #graph of marks1
abline(v=60)    #display of mean in the grah
(marks2=rnorm(69,mean=70,sd=7))
(df=data.frame(rollno,name,gender,age,marks1,marks2))
df[,5]
tail(df)
df$marks1
df[1:3,c('rollno','marks1','marks2')]
print(summary(df))
str(df) 
class(df)
nrow(df)
ncol(df)
dim(df)
names(df)

df[age > 21 & age < 23,1:2]
nrow(df[age>21 & age < 23,1:2])
df[age> 22 & gender=='M',1:6]
df[age>21 & marks1>40 & marks2>40 & gender=='F',1:6]
df[order(df$marks1),]    #sorting assending
df[order(df$age,decreasing = T),]   #decending order
df[order(df$gender,df$age),]        
df[order(df$gender, -df$age),]   #nested sorting
#plot(density(marks1,marks2))
#plot(density(age))
mean(age)
aggregate(df$marks1, by=list(df$gender),mean)
aggregate(df$marks1,by=list(df$gender),sum)
aggregate(cbind(df$marks1,df$marks2),by=list(df$gender),mean)
aggregate(cbind(marks1,marks2) ~ gender,data = df, FUN = mean)#better than upper one
aggregate(marks1 ~ gender,data=df, FUN = mean)
#day one completed with success.
aggregate(cbind(marks1,marks2) ~ gender,data = df, FUN = sum)
