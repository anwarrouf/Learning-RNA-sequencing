# Problem 1: Add Blood Sugar Readings
# Background: You collected two fasting glucose readings from a diabetic patient to confirm the diagnosis
# Task:Write a function add_glucose(a,b) that takes two glucose values (mg/dL) and returns their sum.

add_glucose <- function(a,b){
  total_glucose <- a+b
  return(total_glucose)
}
add_glucose(160,149)

# Problem 2: Calculate BMI
# Background: You want to automate Body Mass Index calculation.
# Task: Write a function calculate_BMI(weight, height) that returns BMI using the formula
# Test your function with weight = 72 kg and height = 1.68 m

calculate_BMI <- function(weight,height){
  BMI <- weight/(height)^2
  return(BMI)
}
calculate_BMI(72,1.68)

# Problem 3: Multiply Experimental Readings
# Background: In an enzyme activity experiment, you measured absorbance from three samples.
# Task:  Write a function enzyme_product(a,b,c) that multiplies the three values and returns the result.


enzyme_product <- function(a,b,c){
  enzyme_activity <- a*b*c
  return(enzyme_activity)
}

# Problem 4: Add Default Value Parameter
# Background: When running multiple assays, sometimes the control group is missing and a default control value (e.g., 100) is used.
# Task: Write a function assay_ratio(treatment, control=100) that divides treatment by control.
# Run the function both with and without specifying the control value

assay_ratio <- function(treatment, control = 100){
  ratio <- treatment/control
  return(ratio)
}
assay_ratio(250,100)
assay_ratio(300)

# Problem 5: Welcome Message for New Students
# Background: You want to personalize messages for new students joining your computational biology course.
# Task: Write a function welcome_student(name) that prints: “Welcome to the R for Biostatistics course, [Name]!”

welcome_students <- function(name){
  print(paste("Welcome to the R Biostatistics course,", name,"!"))
}

name <- "Shohan"
welcome_students(name)


# Problem 6: Summary Statistics for Blood Pressure
# Background: You collected systolic blood pressure data from 10 patients.
# Task: Write a function bp_summary(x) that returns a list containing:
# • Mean, Median, Standard deviation, Minimum, Maximum
# Test it using: x <- c(120,135,140,150,125,138,145,132,128,134)

bp_summary <- function(x){
  mean_bp <- mean(x)
  median_bp <- median(x)
  sd_bp <- sd(x)
  minimum_bp <- min(x)
  maximum_bp <- max(x)
  return(list(Mean = mean_bp, Median = median_bp, SD = sd_bp, Minimum = minimum_bp, Maximum = maximum_bp))
}

x <- c(120,135,140,150,125,138,145,132,128,134)
bp_summary(x)

# Problem 7: Calculate Total Cholesterol
# Background: You have a vector of cholesterol values (mg/dL): c(180, 190, 200, 210, 195).
# Task: Write a function total_cholesterol(x) that sums all values using a for loop (without using sum()).


x <- c(180, 190, 200, 210, 195)

total_cholesterol <- function(x){
  total <- 0
  for (i in c(1:length(x))){
    total <- total + x[i]
  }
  return(total)
}

total_cholesterol(x)


# Problem 8: Compute the Mean Using a Loop
# Background: You want to manually compute mean cholesterol for validation.
# Task: Write a function my_mean(x) that iterates over the vector, sums all values, divides by length, and returns the mean

mean_cholesterol <- function(x){
  total <- 0
  for (i in c(1:length(x))){
    total <- total + x[i]
  }
  mean_cholesterol <- total/length(x)
  return(mean_cholesterol)
}

x <- c(180, 190, 200, 210, 195)
mean_cholesterol(x)

# Problem 9: Generate Multiple Messages
# Background: You need to automatically print weekly lab reminders for 4 weeks.
# Task: Write a loop that prints: “Submit lab results for Week X” where X = 1 to 4.

x <- c(1:4)
for (i in c(1:length(x))){
  print(paste("Submit lab results for Week", x[i]))
}

# Problem 10: Annual Record Tracker
# Background: You are setting up a system that generates reports for each year from 2010 to 2025.
# Task: Write a loop that prints: “Generating report for year: YYYY”

x <- c(2010:2025)
for (i in c(1:length(x))){
  print(paste("Generating report for year:", x[i]))
}

# Problem 11: Import Clinical Data
# Background: You received a CSV file called "clinical_data.csv" containing columns:
# Patient_ID, Age, BMI, Glucose, BP.
# Task: Use read.csv() to load the file and use str() to inspect its structure.

clinical_data <- read.csv("clinical_data.csv")
str(clinical_data) # structure of the dataset

# Problem 12: Add a Derived Column
# Background: For your clinical dataset, you want to calculate a risk index.
# Formula: Risk_Index=(BMI×Glucose)/BP
# Task: Add this new column to your imported data frame and view it.

patient_data$Risk_Index <- (patient_data$BMI * patient_data$Glucose)/patient_data$BP
patient_data
View(patient_data)


# Problem 13: Write Processed Data to a File
# Background: After cleaning your clinical dataset, you want to share it with collaborators.
# Task: Use write.csv() to save your updated data frame as "cleaned_clinical_data.csv".

write.csv(patient_data, "cleaned_clinical_data.csv")

# Problem 14: Create a Function for Gene Expression Summary
# Background: You have a vector of gene expression values for TP53 across 10 samples.
# Your collaborators want to know if the gene is “Highly Expressed” or “Low Expressed.”
# Define thresholds: • 500 → “High Expression” • ≤500 → “Low Expression”
# Task: 1. Write a function gene_summary(x) that: Returns mean, median, and expression category (“High” or “Low”).
# 2. Test your function on: x <- c(350,420,580,700,450,800,900,650,300,500)

TP53_expressions <- x
x <- c(350,420,580,700,450,800,900,650,300,500)

for (i in c(1: length(x))){
  if (x[i] <= 500){
    print(paste(x[i], "is Low Expressed"))
  } else{
    print(paste(x[i], " is Highly Expressed"))
  }
}

# gene_summary function

gene_summary <- function(x){
  gene_mean <- mean(x)
  gene_median <- median(x)
  for (i in c(1:length(x)))
    if (x[i] <= 500){
    print(x[i] <- "high")
  } else{
    print(x[i] <- "low")
  }
  return(list(expression_mean = gene_mean, expression_median = gene_median))
}
x <- c(350,420,580,700,450,800,900,650,300,500)
gene_summary(x)



# gsub function

text <- "The quick fox jumps over the lazy fox"
gsub("fox", "cat", text) # কি replace করবো, কাকে দিয়ে  replace করবো,  কোন vector বা dataframe এর কোন column এ word টা আছে?

fruits <- c("Apple, apple, APPLE")
gsub("Apple", "Orange", fruits, ignore.case = T ) # যদি case ignore করতে চাই

data_string <- "Item123Value456"
gsub("[0-9]","",data_string) # number remove করার জন্য


data_cleaned <- gsub("[a-zA-Z]","",data_string) # character remove করার জন্য
data_cleaned