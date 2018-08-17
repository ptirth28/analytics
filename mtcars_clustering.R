library(NbClust)

names(mtcars)
data2 = mtcars[c('mpg','disp','hp','wt')]

nc = NbClust(data2, distance="euclidean",min.nc=2,max.nc=15,method="average")
nc

#48clust folder in git