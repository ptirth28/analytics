df1 = read.csv('dbms.csv')
#df1

names(df1)

mean(df1$n_tokens_title)
t2=table(df1$n_tokens_title > 10.3 , df1$shares, df1$url , df1$global_subjectivity , df1$average_token_length)
t2


