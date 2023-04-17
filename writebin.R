#Example1
# Creating a data frame
df = data.frame(
  "ID" = c(1, 2, 3, 4),
  "Name" = c("Tony", "Thor", "Loki", "Hulk"),
  "Age" = c(20, 34, 24, 40),
  "Pin" = c(756083, 756001, 751003, 110011)
)
# Creating a connection object
# to write the binary file using mode "wb"
con = file("myfile.csv", "wb")

# Write the column names of the data frame
# to the connection object
writeBin(colnames(df), con)


# Write the records in each of the columns to the file
writeBin(c(df$ID, df$Name, df$Age, df$Pin), con)

# Close the connection object
close(con)

