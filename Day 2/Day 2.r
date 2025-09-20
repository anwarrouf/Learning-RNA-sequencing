# matrix

data <- matrix(c(1:9),nrow=3)
data
data <- matrix(data = c(1:12), nrow = 4)
data

data <- matrix(data = c(1:12), ncol = 3)
data

?matrix

# Description
# matrix creates a matrix from the given set of values.
# matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

matrix(data = c("hello", "hi", "bye",1,2,3), nrow = 3) 
# as this is a mixed type data, that's why, alll data are converted into character

matrix (data = c(1:10), ncol=3, byrow = TRUE) # This will show - 
# Warning message:
  # In matrix(data = c(1:10), ncol = 3, byrow = TRUE) :
  # data length [10] is not a sub-multiple or multiple of the number of rows [4]

# Creating Bangladesh matrix
tamim <- c(10,100,30)
imrul <- c(20,10,100)
fiz <- c(2,1,5)
bangladesh <- matrix(data  = c(tamim,imrul,fiz), ncol = 3, byrow = TRUE)
bangladesh
rownames(bangladesh) <- c("tamim","imrul","fiz")
colnames(bangladesh) <- c("1st","2nd","3rd")
bangladesh

bangladesh[1,2]
# To extract multiple data from matrix. First we have to give row numbers and then column numbers
bangladesh [1, c(2,3)]

# Also we can use column or row names

bangladesh[1, "3rd"]
# or
bangladesh["tamim","3rd"]
bangladesh[c("tamim","imrul"),c("1st","3rd")]


# data frame
?data.frame
# data.frame(..., row.names = NULL, check.rows = FALSE,
# check.names = TRUE, fix.empty.names = TRUE, stringsAsFactors = FALSE)

# What about Factor
            