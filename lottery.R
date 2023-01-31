# Create a vector containing the numbers that mom chose for the lottery (any numbers)
myinputs <- c(4,5,9,15,18,22) 
# Create a vector that stores the lottery results: use sample() to generate 6 random 
# numbers between 1 and 49, without replacement
lottery <- sample(1:49,6,replace=F)
# If mom guessed the lottery numbers, the myinputs and lottery vectors will be the same
# One way to confirm that they are the same, is to subtract one vector from the other.
# If the result is zero, then the two vectors are identical, and mom guessed the lotttery.
# You can use the setdiff() function to check this.
# Setdif() returns a vector with the difference between two vectors.
# In this case we need the difference between the lottery numbers and what mom picked.
# The length() function gets the SIZE of a vector. 
# So, if mom guessed all numbers, then setdiff() would be empty.
# If setdiff() is empty, the length() function would return zero.
wrongGuesses <- length(setdiff(lottery, myinputs)) 
# Then you just need to create the if statement.
# It should check if the length function returned zero, and if it did, mom won the lottery
if(wrongGuesses == 0){
  print("Mom won the lottery!")
} else {
  print("Mom did not win the lottery.")
}
