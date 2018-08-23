#dbms
#new
df=read.csv('dbms.csv')
df
names(df)
table(df$shares)
tabulate(df$shares)
mean(df$shares)
dim(df)
o1 =aggregate(cbind(weekday_is_monday==1 & weekday_is_tuesday==1 & weekday_is_wednesday==1)~url,data = df,FUN = mean)
names(df)
write.csv(o1,'o1.csv')
o2 = df[weekday_is_monday==1 & weekday_is_tuesday==1 & weekday_is_wednesday==1,]
o2
