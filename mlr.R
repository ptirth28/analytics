#MLM
#3 RD METHOD

libarary(gsheet)
url = "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=1595306231"

omni3 = as.data.frame(gsheet::gsheet2tbl(url))

omni  = omni3
head(omni)

#salesqty ~ price + promotion
#predict sales (qty) for diff price and prom.

mlrmodel1 = lm(sqty ~ price + promotion, data = omni)
summary(mlrmodel1)   # 74%
# sqty = 5837 * (-53*price + 31*promotion)
range(omni$sqty)

car::crPlots(mlrmodel1)

car::crPlots(mlrmodel1)

plot(mlrmodel1)
plot(mlrmodel1)
plot()
plot(mlrmodel1, which = 1)


plot(mlrmodel1, which = 2)


#all plots 4

par(mfrow= c(2,2))

#******************************
plot(density(residuals(mlrmodel1)))
plot(mlrmodel1, which = 2)


# is there auto corelation(time)
#if there is time series relation then mlr does not work

car::durbinWatsonTest(mlrmodel1)


#is there multicolinearity
car::vif(mlrmodel1)

plot(mlrmodel1,4)


#prediction*************************************
#predict for new values of iv
(ndata1 = data.frame(price=c(60,70),promotion=c(300,400)))
range(omni$price); range(omni$promotion)
predict(mlrmodel1, newdata = ndata1)
cbind(ndata1, predict=predict(mlrmodel1,newdata = ndata1, predict='response'))

#***************************************************