df <- datasets::airquality
View(df)

# Top 6 records
head(df)

#last 6 records
tail(df)

# first n last 10 records
head(df,10)

tail(df,10)

# extract records in between like from 5 to 25 and from 1 to 5 columns

df[5:25,1:5]

 # for range of records
df[16:21,1]

 # for some records
df[c(1,9), ]

df[1:4, c(1,3)]

df[c(1,5,18), c(1,3)]

# summary of data frame

summary(df)

summary(df$Wind)
attach(df)

summary(Wind)

##### Data Visualization

#Scatter Plot - first x axis , second y axis
plot(Wind, Ozone)

plot(Temp, Ozone, xlab = 'Temp Level',
      ylab= 'Ozone Level', main = 'Temp vs Ozone',
     col='red')

# type parameter - p means point chart, l means line graph, b means both
plot(Temp, Solar.R, xlab = 'Temp Level',
     ylab= 'Ozone Level', main = 'Temp vs Ozone',
     col='red', type='p')


## Bar Plot

barplot(Month, xlab= 'Month', ylab='Frequency', main = 'Bar plot', horiz = T)

## Histogram

hist(Ozone,col='blue')

## single box plot and stats

boxplot(Ozone , col='red', notch = T)

#to see outliers
boxplot(Ozone)$out
boxplot(Ozone)$stats

## multiple boxplots
boxplot(df)

## par function - mar is margin and mfrow is number of rows n cols

par(mar = c(2,5,2,1), mfrow= c(2,2))

hist(Ozone)
plot(Ozone,Temp)
boxplot(Ozone)
plot(Ozone)

## Plot entire dataset

plot(df)

#std deviation - if null values present then na.rm
sd(Ozone, na.rm = T)

# mean
mean(Ozone, na.rm = T)

#median
median(Ozone, na.rm = T)

#variance
var(Wind)

#Skewness - import library 'moments'

library(moments)
skewness(Wind)

kurtosis(Wind)

############# Class Activity #######

