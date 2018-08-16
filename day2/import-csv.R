#import from csv
#analysis of csv file
df1 = read.csv('pdpu.csv')
df1
head(df1)
tail(df1)
mean(df1$marks1)
print(summary(df1))
aggregate(cbind(marks1,marks2)~gender,data=df1,FUN = mean)
aggregate(df1$marks1,by=list(df1$gender),FUN = sum)
table(df1$batch) #list of batches.
table(df1$class)

barplot(table(df1$gender),col = 1:4)
#graph based anlaysis
t1=table(df1$gender)
barplot(t1, col = c('red','green'))
pie(t1)

t2=table(df1$batch, df1$gender)
t2
barplot(t2, col = c('red','green'))
pie(t2)
#write in pdpu2
write.csv(df1,'pdpu2.csv')
write.csv(t2,'pdpu3.csv')
x1=boxplot(df1$batch, df1$genders)
x1




#mtcars
mtcars
str(mtcars)
df2=mtcars
df3=rbind(df2,mtcars)#row bind
df4=cbind(df3,mtcars)  #col bind(same number of rows)
dim(df3)