#matrix
?matrix
m1 = matrix(data=c(1:24),nrow=4)
m1
m1[1,1]
m1[4,5]

M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
M
M1 <- matrix(c(3:14), nrow = 4)
M1
x=seq(1:40) 
m2=matrix(x,nrow = 10,ncol = 4,byrow = T)
m2
t(m2)
m2[2,]
m2[,2]
solve(m1,m2)
m2[2,c(1,2)]
mean(m2[,1])
colmeans(m2)
colMeans((m2))
rowMeans((m2))
mean(m2[m2>10])
diag((m2))
solve(m2)
