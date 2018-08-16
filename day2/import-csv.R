#import from csv

df1 = read.csv('pdpu.csv')
df1
head(df1)
tail(df1)
mean(df1$marks1)
print(summary(df1))
aggregate(cbind(marks1,marks2)~gender,data=df1,FUN = mean)
