# R program to create a List

# The first attributes is a numeric vector
# containing the employee IDs which is created
# using the command here
empId = c(1, 2, 3, 4)

# The second attribute is the employee name
# which is created using this line of code here
# which is the character vector
empName = c("Debi", "Sandeep", "Subham", "Shiba")

# The third attribute is the number of employees
# which is a single numeric variable.
numberOfEmp = 4

# We can combine all these three different
# data types into a list
# containing the details of employees
# which can be done using a list command
empList = list(empId, empName, numberOfEmp)

print(empList)

# R program to access
# components of a list
#Accessing elements by name
# Creating a list by naming all its components
empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4
empList = list(
  "ID" = empId,
  "Names" = empName,
  "Total Staff" = numberOfEmp
)
print(empList)

# Accessing components by names
cat("Accessing name components using $ command\n")
print(empList$Names)
#Accessing elements by indices
# R program to access
# components of a list

# Creating a list by naming all its components
empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4
empList = list(
  "ID" = empId,
  "Names" = empName,
  "Total Staff" = numberOfEmp
)
print(empList)

# Accessing a top level components by indices
cat("Accessing name components using indices\n")
print(empList[[2]])

# Accessing a inner level components by indices
cat("Accessing Sandeep from name using indices\n")
print(empList[[2]][2])

# Accessing another inner level components by indices
cat("Accessing 4 from ID using indices\n")
print(empList[[1]][4])

