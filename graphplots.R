#combined plots

#plot ,histrograms, pie , boxplot, linechart, correlations


#plot
women
str(women)
plot(women)
plot(x=women$height,y=women$weight)
plot(women, type='p', pch=17) # different numeric value for diff symbols
?plot
plot(women, type='l')
plot(women, type='b',pch=13, lty=2, col=2)
plot(women, xlim=c(30,100), ylim=c(min(women$weight)-10,200),pch=13)

#more feaatures

plot(x=women$weight,y=women$height, pch=15, xlab='weight',ylab = 'Height', col='red', cex=2,type='b')

title(main='Main Title- PDPU', sub='Sub Title')


#list of all datasets in R
data()


#abline

abline(v=c(120,150))
abline(h=c(65,70))

abline(lm(women$weight ~ women$height), col='red',lty=2,lwd=4)
abline(v=c(140,130),col='green')
abline(h=c(62,66),col='blue')

abline(v=women$height,col='purple')



#boxplot
#like candelstick graph
boxplot(women$height)
boxplot(women$weight)

abline(h=c(58,62,65,68,72))
abline(h=quantile(women$height))

#histograms
hist(women$height)
hist(women$height, breaks = 10)
hist(women$height, breaks = 5, col=2:6)
hist(df$marks2,breaks = 10)

#histrograms2
x=rnorm(n=1000,mean=50,sd=10)    #normal dist. curve
x
hist(x)
plot(x)

#stats
range(x)
mean(x)
median(x)
x1=sort(x)
x1



#density plot

hist(x, freq = F, col=2:6)
lines(density(x))
#density plot
plot(density(x),col='red')


#pie chart
y=c(1:5)
pie(y)
pie(y, labels = paste(round(y/sum(y)*100,0),'%'))



pairs(women)

#correlation plot
cor(women$height,women$weight)

names(mtcars)

cor(mtcars$mpg,mtcars$cyl)

pairs(mtcars[1:3])
options(digits=4)


#install corrplot
library(corrplot)
cor(mtcars[1:5])
