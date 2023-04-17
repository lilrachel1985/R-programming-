#Calculating the covariance
a <- c(2,4,6,8) 
b <- c(1,11,3,5) 

print(cov(a, b, method = "spearman")) 

#Calculating the correlation
a <- c(2,4,6,8,10) 

b <- c(1,11,3,33,5) 

corr = cor(a,b)
print(corr)

print(cor(a, b, method = "spearman")) 

#Covariance to Correlation
#Correlation matrix
a <- c(2,4,6,8) 

b <- c(1,11,3,33) 

mat <- cbind(a, b)
# Defining X as the covariance matrix
X <- cov(mat)
 
# Print covariance matrix
print(X)
 
# Print correlation matrix of data
# vector
print(cor(mat))
 
# Using function cov2cor()
# To convert covariance matrix to
# correlation matrix
print(cov2cor(X))
