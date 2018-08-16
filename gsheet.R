library(gsheet)



url="https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=216113907"

sales3 = as.data.frame(gsheet2tbl(url))

names(sales3)

summary(sales3)

head(sales3)
sales=sales3

t1=table(sales$custname)
t1
rownames(t1)


#frequency *********************

name(sales)
t1=table(sales$custname)
t1
class(t1)
length(t1)
head(t1)

t2= sort(t1,decreasing=T )
head(t2)

#dply*******************************
library(dplyr)
sales %>% dplyr::count(custname, sort=TRUE)

sales %>% dplyr::group_by(custname) %>% dplyr::summarise(n = n()) %>% dplyr::arrange(desc(n))
