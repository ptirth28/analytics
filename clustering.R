#clustring

A=c(1,1.5,3,5,3.5,4.5,3.5)
B=c(1,2,4,7,5,4,5)
length(A);length(B)
marks=data.frame(A,B)
marks

?kmeans
(c1 = kmeans(marks,centers =  4))      #number of centers is number of clusters
c1$iter

cbind(marks, c1$cluster)
plot(marks, pch=10, col = c1$cluster)
c1$centers             #mean of clusters
points(c1$centers,col = 1:3,pch = 8,cex = 3)   #col=color
