#lr
names(mtcars)
cor(mtcars$mpg, mtcars$wt)
cov(mtcars$mpg, mtcars$wt)

women
cor(women$height, women$weight)    # co relation
cov(women$height, women$weight)   #co VRIANCE
#**************************************************************
fit = lm(weight ~ height, data = women)   #linear model
                   # weight = -87 + 3.4*height    ----   y = mx + c  -----
(ndata = data.frame(height = c(60.5, 75.5)))
predictedwt = predict(fit, newdata = ndata)
cbind(ndata, predictedwt)
#**************************************************************
# top 10 algo used by data scientist
plot(women)

summary(fit)

fit2 = lm(mpg ~ . , data = mtcars)
summary(fit2)
