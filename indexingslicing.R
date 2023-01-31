#Positional Indexing
#If we start with a simple vector
#we can extract each element from the vector by placing its position in brackets
c("a", "b", "c")[1]
c("a", "b", "c")[2]
c("a", "b", "c")[3]
#Indices in R start at 1 for the first item in the vector and continue up to the length of the vector
4[1]
#Creating a numeric and character vector
n.deck<-c(6,7,8,9,10)
deck<-c("Duke","Assasin","Catain","Ambassador","Contessa")
#Selecting a value from an objectZ
#vector.name[n]
deck[4]
deck[-4]
#vector.name[-n]
#selects all values but the one indexed
#vector.name[c(n1,n2,n3)]
deck[c(1,3,5)]
#Named Indexing
#Vector elements can assigned names, 
#such that each element has a value but also a name attached to it
#named.vector["value name"]
names(n.deck)<-deck
n.deck
#naming happens with the names function
#Named Indexing syntax:named.vector["value name"]
n.deck["Contessa"]

#Slicing
#Syntax: vector.name[n1:nk]
n.deck[3:5]
#example 2 How to select all other elements but a slice
#Syntax:vector.name[-(n1:nk)]
lv<-seq(10,100,by=10)
lv
lv[-(3:6)]
#Vector Dimensions
#Syntax for sequence :sample(from=, to=,by=,...)
a<-seq(10,120, by=10) 
a
typeof(a)
class(a)
#We can use the dimensions argument to make it into an array/matrix
#Synatax: dim(object.to.transform)<-c(n,m)
#bends the object.to.transform to a two-dimensional object with n rows and m columns
dim(a)<-c(3,4)
#In R while using the dim function the number of rows s defined first. So 3 is the number of rows and 4 is columns
a
#Changing the dimension will create a special case of the object
#It will not change the basic type
typeof(a)
#Hence typeof function shows double before and after adding dimensions
#However use class and see. it will show numeric first and then it will show matrix
class(a)



