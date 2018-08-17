#selecting the number of clusters

library(NbClust)

data = iris[-5]
head(data)
#***********************
km1 = kmeans(data,centers=1)
km1$tot.withinss
#**************************
km2 = kmeans(data,centers = 2)
km2$tot.withinss
#***************************
km2$withinss
km3 = kmeans(data,centers = 3)
#*****************************
km3$tot.withinss
km3$withinss
#*****************************

nc = NbClust(data, distance="euclidean",min.nc=2,max.nc=15,method="average")
nc
#3 clusters are most suitble
