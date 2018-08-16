#factors

grades = sample(c('A','B','C','D','E','F'),size=69,replace=T,prob = c(.1,.20,.25,.15,.20,.10))
grades
gender = sample(c('Male','Female'),size=69,replace=T,prob = c(.6,.4))
gender

?factor

genderF = factor(gender)
summary(gender)
summary(genderF)

#male first (ordered changed)
genderF1 = factor(gender,ordered = T, levels = c('Male','Female'))
summary(genderF1)

#grades
gradesF = factor(grades,ordered = T, levels = c('A','B','C','D','E','F'))
summary(gradesF)


table(genderF)
table(gradesF)
