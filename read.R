# R program to illustrate
# working with binary file
 
# Creating a connection object
# to read the file in binary mode using "rb".
con = file("myfile.dat", "rb")
 
# Read the column names
# n = 4 as here 4 column
colname = readBin(con, character(),  n = 4)
 
# Read column values
# n = 20 as here 16 values and 4 column names
con = file("myfile.csv", "rb")
bindata = readBin(con, integer(), n = 20)
 
# Read the ID values
# as first 1:4 byte for col name
# then values of ID col is within 5 to 8
ID = bindata[5:8]
 
# Similarly 9 to 12 byte for values of name column
Name = bindata[9:12]
 
# 13 to 16 byte for values of the age column
Age = bindata[13:16]
 
# 17 to 20 byte for values of Pincode column
PinCode = bindata[17:20]
 
# Combining all the values and make it a data frame
finaldata = cbind(ID, Name, Age, PinCode)
colnames(finaldata)= colname
print(finaldata)