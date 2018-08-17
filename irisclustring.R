#clustring iris data set

head(iris)

str(iris)

table(iris$Species)

irisFeatures = iris[,-5]

head(irisFeatures)

iriskm1 = kmeans(irisFeatures, centers = 3)
iriskm1
iriskm1$centers
colMeans(irisFeatures[iriskm1$cluster==1,])  #mean of specific cluster
iriskm1$iter   #number of iterations
(iris[iriskm1$cluster==1,])



