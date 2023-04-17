#defining a S4 class
setClass("Employee_Info",slot=list(name="character",age="numeric",role="character"))
#creating a S4 object 
student1<-new("Student",name="Peter",age=21,role="Developer")
#list all S4 generic methods
showMethods()
#Access S4 class slot in R
student1@name
#Modify S4 class slot
student@role<-"Designer"
slot@role
#Check if a function is a generic function
isS4(print)
isS4(show)

#Creating an S3 class
#Example 1 Bank Account Details
x <- list(name ="Arjun", account_no = 1234,
          saving = 1500, withdrawn = 234)
class(x)<-"bank"
x
#Example 2 Resume
x <- list(name ="Arjun", percentage = 95,
          school_name ="ST Xavier")
class(x)<-"resume"
x
#Generic function print()
methods(print)
