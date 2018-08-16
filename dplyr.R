df=read.csv('pdpu.csv')
head(df)
tail(df)
mean(df$marks1)
print(summary(df))
aggregate(cbind(marks1,marks2)~gender,data=df,FUN = mean)
aggregate(df$marks1,by=list(df$gender),FUN = sum)
table(df$batch) #list of batches.
table(df$class)
library(dplyr)

names(df)
df %>% group_by(batch,gender) %>% summarise(avgsubject1=mean(marks1),maxmk1=max(marks1),minmk1 = min(marks1))

df %>% filter(marks1 > 70)
df %>% filter(gender == 'M')
df %>% group_by(batch) %>% percent_rank(marks1)
?percent_rank
percent_rank(marks1)

df %>% group_by(rollno,percent_rank(marks1)*100,percent_rank(marks2)*100)
