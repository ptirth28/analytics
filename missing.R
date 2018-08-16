#Missing Values
#Create, Detect, Replace, Remove, Impute, Visualise

(v1 = c(1,2,NA,NA,5))

is.na(v1)
v1=NULL
v1  #remove all values
(v1 = c(1,2,NA,NA,5))
sum(is.na(v1))  #sum true value 
mean(v1)  #cant compute
mean(v1,na.rm=T)

anyNA(v1)
v1[is.na(v1)]
v1[is.na(v1)] = mean(v1, na.rm = T)
v1
