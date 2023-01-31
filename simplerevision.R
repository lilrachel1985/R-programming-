getwd()
data <- read.csv("C:/Users/hp/Documents/data.csv", sep=",", header=T) # T is short-hand for TRUE
data
# A dataframe is a data type for storing tabular data##
##To display the data you loaded simply type the variable name##
head(data)
tail(data)
#head and tail are used to get a quick glimpse of the data#
#We can also access subsets and individual elements by bracket-indexing##
##The access order is data[<row>,<column>]#
#so to access the sixth column (Water) of the first country (Afghanistan), we can do##
data[1,6]
#We can also use column names##
data[1,"Male"]
#Omitting an index, but retaining the comma, gives you all the values along the omitted axis##
##To get the entire fourth row, type:##
data[4,]
data$Healthy.life.expectancy..HALE..at.birth..years.
#to get nteresting subsets from the data##
## To get subset of data with life expectancy over 80#
data[data$Life.expectancy >= 80,]
v <- c(2, 8, 4, -3)
# to find the square root we create a vector and apply sapply function ##
sapply(v, function(x) x^2)
sapply(data, is.numeric)
#Categorical values are called factor values in R#
#We can perform operations on each categorical group, similar to GROUP BY in SQL#
#using the tapply function#
tapply(data$Life.expectancy.at.age.60..years..1,data$Life.expectancy.at.age.60..years..2,mean)
#inspecting the correlation among two variables using plots##
plot(data$Life.expectancy.at.birth..years., data$Life.expectancy.at.age.60..years.)

  





