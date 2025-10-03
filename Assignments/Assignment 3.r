# Problem 1: Patient Registry
# Background: You are building a simple registry of three patients enrolled in a diabetes study: "Rahim", "Karim", "Sultana".
# Task: Create a character vector with their names and print the second patient.

patients <- c("Rahim", "Karim", "Sultana")
print(patients[2])


# Problem 2: Blood Pressure Data
# Background: Systolic blood pressure (SBP) values were recorded for four hypertensive patients: 145, 160, 138, 152.
# Task: Store these in a numeric vector and extract the 3rd and 4th patients’ SBP

sbp <- c(145,160,138,152)
sbp_3rd_4th <- sbp[c(3,4)]
sbp_3rd_4th

# Problem 3: Gene Expression Counts
# Background: Expression counts for the gene TP53 were measured in four samples: 500, 800, 450, 600.
# Task: Create a vector and calculate the mean expression

tp53_expression <- c(500,800,450,600)
mean_expression <- sum(tp53_expression)/length(tp53_expression)
mean_expression


# Problem 4: Small Cohort Data Frame
# Background: A nutrition study enrolled three patients with the following ages and BMI values:
# Name Age BMI
# Ali 35 24.5
# Sonia 29 28.2
# Kabir 41 31.0
# Task: Create a data frame from this dataset
Name <- c("Ali", "Sonia", "Kabir")
Age <- c(35, 29, 41)
BMI <- c(24.5, 28.2, 31.0)

data_frame <- data.frame(Name, Age, BMI)
data_frame

# Problem 5: Add BMI Classification
# Background: For clinical interpretation, classify BMI into:
# "Normal" if < 25
# "Overweight" if 25–29.9
# "Obese" if ≥ 30
# Task: Add a new column "BMI_Class" to the data frame

# using ifelse function. ifelse is different from if and else if. I have to remember the difference
data_frame$BMI_Class <- ifelse(data_frame$BMI < 25, "Normal",
                               ifelse(data_frame$BMI >= 25 & data_frame$BMI < 30, "Overweight",
                                      ifelse(data_frame$BMI >= 30, "Obese", NA)))
data_frame

# Problem 6: Subset Patients by Age
# Background: Researchers want only participants older than 30 years.
# Task: Use conditional indexing to filter the data frame.

over_30_years_age <- data_frame[data_frame$Age > 30, ]
over_30_years_age

# Problem 7: Subset Patients by BMI
# Background: The team wants to see patients classified as "Obese".
#Task: Filter the data frame to select only those rows.
obese_patients <- data_frame[data_frame$BMI >= 30, ]
obese_patients

# Problem 8: Create a Gene Expression Matrix
# Background: You measured expression of three genes (BRCA1, EGFR, MYC) across three patients.
# Gene P1 P2 P3
# BRCA1 120 150 130
# EGFR 300 350 400
# MYC 800 900 950
# Task: Create this as a matrix with proper row and column names

BRCA1 <- c(120,150,130)
EGFR <- c(300,350,400)
MYC <- c(800,900,950)
gene_expression <- matrix(data = c(BRCA1,EGFR,MYC), byrow = TRUE, nrow = 3)
gene_expression
rownames(gene_expression) <- c("BRCA1", "EGFR", "MYC")
colnames(gene_expression) <- c("P1", "P2","P3")
gene_expression

# Problem 9: Extract Specific Expression Value
# Background: You want MYC’s expression for Patient 2.
# Task: Extract this value from your matrix.

MYC_P2 <- gene_expression["MYC","P2"]
MYC_P2

# Problem 10: Create a Multi-Object List
# Background: You want to store different analysis objects together:
# 1. A vector of patient ages: 35, 29, 41
# 2. The gene expression matrix from Problem 8
# 3. The nutrition data frame from Problem 4
# Task: Create a list with these three objects
ages <- c(35, 29, 41)
gene_expression
data_frame
list <- list(Ages = ages, GeneExpression = gene_expression, datFrame = data_frame)
list

# Problem 11: Extract from a List
# Background: You want to analyze EGFR expression across all patients.
# Task: Extract the second row of the matrix from the list.
EGFR <- list[["GeneExpression"]][2,]
EGFR

# Problem 12: Conditional Statement for Glucose Check
# Background: Fasting blood glucose (FBG) was measured for a patient and stored as x.
# • If FBG < 100 → "Normal"
# • If FBG 100–125 → "Prediabetes"
# • If FBG ≥ 126 → "Diabetes"
# Task: Write an if-else statement to classify the patient based on x.

FBG <- 130
if (FBG < 100){
  print("Normal")
} else if (FBG >= 100 & FBG <125){
  print("Prediabetes")
} else if (FBG >=126){
  print("Diabetes")
}

# Problem 13: Identify High-Risk Patients
# Background: A cardiovascular study defines “high risk” as patients who are both older 
# than 40 years AND have BMI ≥ 30.
# Name Age BMI
# Tania 42 31.5
# Mahir 37 28.0
# Jui 45 29.5
#Imran 50 32.0
# Task:
 # 1. Create this as a data frame.
# 2. Use conditional indexing to extract patients classified as “high risk.”

Name <- c("Tania", "Mahir", "Jui", "Imran")
Age <- c(42, 37, 45, 50)
BMI <- c(31.5, 28, 29.5, 32)
df <- data.frame(Name,Age,BMI)
df
high_risk <- df[Age > 40 & BMI >= 30,]
high_risk

# Problem 14: Integrate Different Biomedical Data in a List
# Background: In an oncology project, you need to store:
 #  • A patient demographic data frame (Name, Age, Sex).
# • A matrix of tumor marker expression values (CA125, CEA, PSA across 3 patients).
# • A vector of survival times (months).
# Task:
 #  1. Create a list containing all three objects.
# 2. Extract:
  # The CEA expression for the 2nd patient.
  # The survival time for the 3rd patient.

Name <- c("Alam", "Mili", "Nurul")
Age <- c(36, 38, 32)
Sex <- c("male", "female", "male")
df <- data.frame(Name,Age,Sex)
df

tumor_marker <- matrix (data = c(25,28,32, 122, 101, 143, 98, 46, 83), byrow = TRUE, nrow =3)
colnames(tumor_marker) <- c("CA125", "CEA","PSA")
rownames(tumor_marker) <- Name
tumor_marker

survival_months <- c(45, 62, 38)

my_list <- list(Patients_detail = df, TumorMarker = tumor_marker, Survival = survival_months)
my_list

CEA_expression <- my_list[["TumorMarker"]][2,"CEA"]
CEA_expression
survival_3rd_patient <-my_list[["Survival"]][3]
survival_3rd_patient

# Problem 15: Automated Classification of Anemia Status
# Background: Hemoglobin (Hb) values were measured for 6 patients: 11.2, 13.5, 9.8, 14.1, 12.0, 8.7.
# WHO guidelines: Hb < 12 → "Anemia" Hb ≥ 12 → "Normal"
# Task:
  # 1. Store the Hb values in a vector.
  # 2. Use ifelse() to create a classification vector ("Anemia" or "Normal").
  # 3. Add this classification as a new column in a data frame of patients.
hb <- c(11.2, 13.5, 9.8, 14.1, 12.0, 8.7)
hb_class <- ifelse(hb < 12, "Anemia",
                   ifelse(hb >= 12, "Normal", NA))
hb_df <- data.frame(hb, hb_class)
hb_df
