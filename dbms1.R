df1 = read.csv("dbms.csv")
df1
summary(df1)
library(dplyr)

write(test.csv) = df1 %>% filter(shares > 1000) %>% arrange(avg_negative_polarity, desc(avg_negative_polarity))
