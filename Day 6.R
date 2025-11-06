data <- read.csv("Demo_Gene_Expression.csv")
View(data)

# Problems in this gene_expression dataset:
  # first column - special characters (#,*), data duplication
  # second column - inconsistent format
  # third column - value missing, negative value
  # fourth column -
  # five column -
  # six column - 

# Changing column names using gsub

colnames(data) <- gsub("\\.","_",colnames(data))
data

# Removing special characters in Gene_ID column

# gsub("\\.","",x) # যে character বাদ দিতে চাই তবে প্রথমে \\ দিয়ে character টা লিখতে হবে
# data$Gene_ID <- gsub(" ","",data$Gene_ID) # space remove করার জন্য
# data$Gene_ID <- gsub("\\#","",data$Gene_ID)
# data$Gene_ID <- gsub("\\*","",data$Gene_ID)

# আমরা gsub কে nested করতে পারি। for example,
data$Gene_ID <- gsub(" ","",gsub("\\*","",gsub("\\#","",data$Gene_ID)))
# অথবা gene_expression$Gene_ID <- gsub("[ #*]", "", gene_expression$Gene_ID)

data

# Deleting duplicate values in Gene_ID column

duplicated(data$Gene_ID)

# result হবে FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
# শুরু করবে প্রথম row থেকে; FALSE মানে হচ্ছে এই value টা  সে দেখে নাই

data[!duplicated(data$Gene_ID), ] # duplicated গুলো বাদ দিয়ে বাকিগুলো রাখবে

# Making sample ID format uniform
  # first removing underscore and hash by nested gsub
data$Sample_ID <- gsub("\\_","",gsub("\\-","",data$Sample_ID))

  # then making all upper case
data$Sample_ID <- toupper(data$Sample_ID)
data$Sample_ID <- gsub("SAMPLE","S",data$Sample_ID)
data$Sample_ID <- gsub("S0","S",data$Sample_ID)

data

data <- data[!duplicated(data$Gene_ID), ]

data
# To give serial numbers starting from 1 to last row
# Using append function

s_n <- c()

for (i in 1:10){
  print(i)
  x <- paste("S",i,sep = "_")
  s_n <- append(s_n,x)
  print(paste(s_n))
}

# How to change NA value. NA means Not Available
is.na(data$Expression_level)

# gene_expression[!is.na(gene_expression$Expression_Level), ]


# Normally আমরা NA তে mean value বসাই
# na.rm বলতে not available.removal বোঝায়

mean(data$Expression_Level, na.rm = T)
data[!duplicated(data$Gene_ID), ]
median_df <- median(data$Expression_Level, na.rm = T)
median_df

data$Expression_Level[is.na(data$Expression_Level)] <- median_df
data

# correcting negative values

data$Expression_Level <- abs(data$Expression_Level)
data

# row removal
data[!data$Gene_ID == "ERBB2", ]
data[!duplicated(data$Gene_ID), ]
data[!data$Gene_ID == "ERBB2", ]


# Consistent format in upregulated column

data$Upregulated %in% c("TRUE","yes",1) # checking vectors in another vector

data$Upregulated <- ifelse (data$Upregulated %in% c("TRUE","yes",1), "TRUE", "FALSE")
data

# In Tissue column, there are one blank cell but NA was not written like Expression_level column
