X <- matrix(1:12, nrow = 4, ncol = 3)
X
#to fill the matrix row by row set byrow=TRUE
X <- matrix(1:12, nrow = 4, ncol = 3, byrow = TRUE)
X
# the number of rows, or number of columns.
nrow(X)
ncol(X)
# Subsetting a matrix similar to vectors but here we need to consider 2 dimensions
X[1,2]
X[2,3]
#If one wants all values in a column or a row this can be specified by leaving the other dimension empty
X[,1]
#Example 2 : Box office grosses for each Harry Potter movie in the US and worldwide
gross<-c(230,245,256,289,332,354,312,211,132)
hp.mat<-gross(marks,nrow=3,byrow=T)
hp.mat
#Row Index - [n,] and Column Index -[,n]
hp.mat[3,2]
hp.mat[3,]
#Subsetting Using a comparison operator 
X[X>6]
#the number of elements of the underlying vector
length(X)
#It can also be calculated manually as follows
nrow(X)*ncol(X)
#Type of data
typeof(X) 
usa<-c(1.3,1.2,1.5,1.4,1.6)
usa
de<-c(0.2,0.3,0.4,0.5,0.6)
de
ngo<-cbind(usa,de)
ngo
ngo<-rbind(usa,de)
ngo
#Similarily we can do with rbind but we will not do it now because we wish to do with column notation.
#Naming
rownames(ngo)<-c("2013","2014","2015","2016","2018")
ngo
#transpose
ngo<-t(ngo)
ngo
#let's use rbind now. Binds vectors into rows of a matrix or adds them to an existing structure
ind<-c(1.2,1.3,1.4,1.5,1.6)
ngo<-rbind(ngo,ind)
ngo



# Matrix recycling
expl<-matrix(1:10,nrow=4,ncol=4)
expl
# Matrix Arithmetic
b.office<-c(191,134,152,198,202,228)
b.office
matrix.mat<-matrix(b.office,nrow=3, byrow=T, dimnames=list(c("The Matrix","Ratatouille","MI3"),c("US","Worldwide")))
matrix.mat
#Scalar operations 
matrix.scaled<-matrix.mat/1000
matrix.scaled
#To find out the average how each movie made given a budget of 121 $
avg.margin<-matrix.mat-121
avg.margin
#Subtracting two matrices
budget<-matrix(c(63,150,150),nrow=3,ncol=2)
budget
margin<-matrix.mat-budget
margin
#Subtracting a vector from a matrix
matrix.mat-c(63,150,150)
margin
#Matrix Multiplication
v<-matrix(1:6,nrow = 3)
v
matrix.multiplied<-matrix.mat*v
matrix.multiplied

#Other Matrix Operations
matrix.mat<-matrix(b.office,nrow=3, byrow=T, dimnames=list(c("The Matrix","Reloaded","Revolutions"),c("US","Worldwide")))
matrix.mat
# How much did all 3 movies make in total and save it to a vector called total
total<-colSums(matrix.mat)
total
# How much on average the movies made in the US and Worldwide and save it to a vector called average
average<-colMeans(matrix.mat)
average
#Similar function for rowMeans but we are not using it
rowMeans(matrix.mat)
#Using rbind and cbind
matrix.prelim<-cbind(matrix.mat,average,total)
matrix.prelim








#Exercise Solution- Creating a matrix and working with rbind
player <- c(rep("dark", 5), rep("light", 5))
# the rep() function repeats a value the stated number of times
# use ?rep for more information
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess <- c(player, piece)
dim(chess) <- c(10, 2)
colnames(chess) <- c("Player", "Piece")
chess
# or
chess.mat <- matrix(chess, nrow = 10, dimnames = list(NULL, c("Player", "Piece"))) 
# byrow = FALSE is the default value which is what we need here
# because we've defined nrow = 10, R will infer that ncol = 2
# setting the first argument of dimnames to NULL tells R we won't be setting row names
chess.bind <- cbind("Player" = player, "Piece" = piece)
chess.bind
#Indexing and Slicing Solution
chess.t <- t(chess)
turn <- c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1)

chess.t <- rbind(chess.t, "Turn" = turn)
chess <- t(chess.t)
chess
chess[6, 2]
chess[, 1:2]
# or
chess[, -3]
# or
chess[, c("Player", "Piece")]
chess[1:5, ]
chess[, 2, drop = FALSE]
chess[, -2]
chess[2, c(1, 3)]
chess[7, 3] <- 3
chess[7, 3]
#Exercise Solution- Matrix Arithmetic
#Using runif function created a matrix with 12 random numbers
my.mat <- matrix(runif(12), nrow = 3, byrow = TRUE, dimnames = list(c("x", "y", "z"),
                                                                    c("uno", "dos", "tres", "cuatro")))
my.mat
#Scale the matrix to 10 and saved the result
my.mat <- my.mat*10
my.mat
#Using subsetting to extract from the larger matrix
s.mat <- my.mat[1:2, ]
s.mat

uno <- my.mat[, "uno"]
uno
my.mat - uno

# you can only do matrix operations with two matrices when they are of the same size
# R's recycling rules apply when you try to do an operation with a matrix and a vector

new.mat <- matrix(rnorm(12), nrow = 3, byrow = TRUE)
mat1<-my.mat * new.mat
mat1
