# Defining vector
mobilesold <- c(3, 7, 5, 13, 20, 23, 39, 23, 40, 23, 14, 12, 56, 23)
# Print mean
mean(mobilesold)
print(mean(mobilesold))

# Defining vector
x <- c(1, 5, 9, 19, 25)
# Print Geometric Mean
print(prod(x)^(1 / length(x)))

# Defining vector
x <- c(1, 5, 8, 10)
# Print Harmonic Mean
print(1 / mean(1 / x))


# Defining vector
x <- c(3, 7, 5, 13, 20, 23, 39, 23, 40, 23, 14, 12, 56, 23)
# Print Median
median(x)

# Defining vector
x <- c(3, 7, 5, 13, 20, 23, 39,  
       23, 40, 23, 14, 12, 56,
       23, 29, 56, 37, 45, 1, 25, 8)
# Generate frequency table
y <- table(x) 
# Print frequency table
print(y)
# Mode of x
mode <- names(y)[which(y == max(y))]  
# Print mode
print(mode)

# Defining vector
x <- c(3, 7, 5, 13, 20, 23, 39, 23, 40, 
       23, 14, 12, 56, 23, 29, 56, 37,
       45, 1, 25, 8, 56, 56)
# Generate frequency table
y <- table(x)
# Print frequency table
print(y)  
# Mode of x
m <- names(y)[which(y == max(y))]
# Print mode
print(m)

# Required for skewness() function
library(moments)
# Defining data vector
x <- c(40, 41, 42, 43, 50)
# output to be present as PNG file
png(file = "positiveskew.png")
# Print skewness of distribution
print(skewness(x))
# Histogram of distribution
hist(x) 
# Saving the file
dev.off()

# Required for skewness() function
library(moments) 
# Defining normally distributed data vector
x <- rnorm(50, 10, 10)
# output to be present as PNG file
png(file = "zeroskewness.png")
# Print skewness of distribution
print(skewness(x))
# Histogram of distribution
hist(x)
# Saving the file
dev.off()

# Required for skewness() function
library(moments)
# Defining normally distributed data vector
x <- rnorm(50, 10, 10)
# output to be present as PNG file
png(file = "zeroskewness.png")
# Print skewness of distribution
print(skewness(x))
# Histogram of distribution
hist(x)
# Saving the file
dev.off()


# Required for kurtosis() function
library(moments)
# Defining data vector
x <- c(rep(61, each = 10), rep(64, each = 18),
rep(65, each = 23), rep(67, each = 32), rep(70, each = 27),
rep(73, each = 17))
# output to be present as PNG file
png(file = "platykurtic.png")
# Print skewness of distribution
print(kurtosis(x))
# Histogram of distribution
hist(x)
# Saving the file
dev.off()

