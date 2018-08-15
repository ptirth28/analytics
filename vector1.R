# Vectors

#sequence of data elements of the same basic type

#Scalar
x1 = 1
x2 <- 2
x1
x2
(x3 = 3) #assign and print

#Vector----
# Combining vectors with c()----
x = c(1, 5, 4, 9, 0)
typeof(x)  #[1] "double"
length(x)   #[1] 5

#Vector using : operator
x = 1:7; x   #[1] 1 2 3 4 5 6 7
y <- 2:-2; y  #[1]  2  1  0 -1 -2

#Vector using seq command
seq(1, 3, by=0.2)          # specify step size
#[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
seq(1, 5, length.out=4)    # specify length of the vector 4parts from 5
#[1] 1.00 2.33 3.667 5.00
a=1:100000
a
mean(a)
(b=2:-4)
c=3:-100;c
seq(1,100,by=2)
e=seq(1,40,length.out = 3);e
seq(1,10,length.out = 7)
?seq(length.out)
?seq
??length.out
seq(1,10,along.with = c(2,4,6,8))
