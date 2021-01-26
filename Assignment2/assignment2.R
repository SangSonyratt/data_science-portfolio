#1. Object x <-1:15 
#Construct a 5x3 matrix for the value of x. 
x <- 1:15 
print(matrix(x, nrow=5, ncol=3))

#2. Write a program to generate the following 4x4 matrix
#0 0 0 0
#0 0 0 0
#0 0 0 0
#0 0 0 0

print(matrix(0,nrow=4, ncol=4))

#3. The object x<-1:8
#Write a program to generate the following 3x8 matrix using "cbind(),rbind(),rev(),rep()"
#1 2 3 4 5 6 7 8
#8 7 6 5 4 3 2 1
#3 3 3 3 3 3 3 3

x <- 1:8
print(rbind(x,rev(x),rep(3,8)))

#4. Chose two different(x,y) 4x4 matrix to perform the following arithmetic operations
#(a). x + y
#(b). x - y
#(c). x*y
#(d). x%*%y
#(e). Difference between (c) &(d)
#(f). Inverse of y
#(g). z<-x/y
#(h). Transpose of z
#(i). Diagonal of transpose matrix

x <- matrix(1:16, nrow=4)
y <- matrix(1:16, nrow=4)
#a
print(x + y)
#b
print(x - y)
#c 
print(x * y)
#d 
print(x%*%y)
#e 
# (c) is Matrix element of x multiple to Matrix element of y
# (d) is Matrix Product

#f
library(MASS)
print(ginv(y))
#g
z <- x/y
print(z)
#h
transpose <- t(z)
print(transpose)
#i
print(diag(diag(transpose)))

#5. Difference between (i) & (ii), (i). x<-matrix(x<-1:9,3,3,byrow = TRUE), (ii). x<-matrix(x<-1:9,3,3)
# (i) matrix is created the value from Vector by row fist
# (ii) matrix is created the value from vector by col fist (the default)

#6. Which function can we use for inner product and outer product in matrix calculation?
# Inner product is %*%
# Outer product is %o%

#7. Explain the use of all.equal() function in Matrix with a sample program. 
# all.equal() function in Matrix is used to compare the 2 matrix to check that 2 matrix is nearly equal or exactly equal or not and return mean of the different.
print(all.equal(x,y))

#8. Explain the use of dim() function with a sample program.
# dim() function is used to get the dimensions of matrix. It return 2 integer number that the fist one indicate number of row and second number indicate number of column.
print(dim(x))

#9. Use of $ operator, and square brackets [] in List with example program
# $ operator in List is used for access the Element in the list by name.
# [] square brackets operator in List is used for access the element in the List by index.

op <- list(id = 1, ha = 2, k = 3)
print(op$id)
print(op[1])

#10. Explain ifelse() with example.
a <- 10
ifelse(a > 5,"bigger than 5","smaller than 5")

#11. Write a program to get the weight and height from the user to calculate the following cases
#a. If your BMI is less than 18.5, it falls within the underweight range.
#b. If your BMI is 18.5 to <25, it falls within the normal.
#c. If your BMI is 25.0 to <30, it falls within the overweight range.
#d. If your BMI is 30.0 or higher, it falls within the obese range.

wei <- as.numeric(readline(prompt="Enter your weight: "))
hei <- as.numeric(readline(prompt="Enter your height: "))
BMI <- wei/hei^2
if(BMI<18.5){
  print("underweight")
}else if (BMI<25) {
  print("normal range")
}else if (BMI<30) {
  print("overweight")
}else{
  print("obese")
}

#12. Difference between List and Data frame with an example program.
# List is the array of element that store in sequence.
# Data Frame is the matrix that store in the form of row and column.

print(list(1, 2 , 3))
weight <- c( 1, 2, 3)
height <- c( 2, 3, 4)
print(data.frame(Weight = weight, Height = height))

#13. Difference between repeat and while loop with example program.
# Repeat is the loop that requires you to explicitly break the loop on your own and can be at any point in the body of the loop.
# While is the loop that tests a condition to determine when to finish looping.

k <- 1
repeat {if (k==3) break;print(k);k<-k+1}
k <- 1
while (k!=3) {print(k);k<-k+1}

