#lr

women
#predict weight for height = 67.5
fit3 = lm (weight ~ height, data = women) #linear lr
summary(fit3)  #value of p-value should be less than .05
# 99% of var in height is shown by weight , by multiple R-square
#in mlr we have to see adj -squared value

ndata1 = data.frame(height = c(60.5,72))
p1 = predict(fit3, newdata = ndata1, type = 'response')     #there are various type of type and response
cbind(ndata1, p1)
range(women$height)   #range for valid prediction

#*****************************************
denco2
fit4 = lm (margin ~ revenue+cost, data = denco2)   #Multiple lr
names(denco2)
summary(fit4)

