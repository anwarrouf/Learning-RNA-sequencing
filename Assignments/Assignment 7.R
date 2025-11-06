# Creating a datast of patients
ID = 1:10
Name = c("Ali", "Sara", "Rahim", "Joya", "Tom", "Anika", "Mehedi", "Rita", "Karim", "Elina")
Age = c(45, 34, 50, 29, 42, 38, 41, 33, 47, 31)
Gender = c("M", "F", "M", "F", "M", "F", "M", "F", "M", "F")
BP_Sys = c(120, 110, 145, 130, 150, 138, 160, 125, 148, 135)
BP_Dia = c(80, 70, 90, 85, 95, 88, 100, 75, 92, 82)
Cholesterol = c(200, 180, 250, 195, 270, 210, 300, 190, 280, 205)
Diagnosis = c("Hypertension", "Normal", "Hypertension", "Normal", "Hypertension",
              "Borderline", "Hypertension", "Normal", "Hypertension", "Borderline")

patients_data <- data.frame(ID, Name, Age, Gender, BP_Sys, BP_Dia, Cholesterol, Diagnosis)

# Select Key Clinical Columns

library(dplyr)

key_clinicals <- patients_data %>%
  select(Name, Age, Cholesterol, Diagnosis)

# Filter Patients by Age and Gender

female_35 <- patients_data %>%
  filter(Gender == "F" & Age > 35)

str(patients_data)

# Identify Hypertensive Males

hyper_male <- patients_data %>%
  filter(Gender == "M" & Diagnosis == "Hypertension")

# Select Borderline Female Patients
border_female <- patients_data %>%
  filter(Gender == "F" & Diagnosis == "Borderline")

# Arrange by Cholesterol Level
choles_high_low <- patients_data %>%
  arrange(Cholesterol)

choles_low_high <- patients_data %>%
  arrange(desc(Cholesterol))

# Create a Combined Blood Pressure Score
combined_bp <- patients_data %>%
  mutate(total_BP = BP_Sys + BP_Dia, .after = BP_Dia)

# Calculate Average Age and Cholesterol
age_choles_stat <- patients_data %>%
  summarise(mean_age = mean(Age),
            mean_cholesterol = mean(Cholesterol))
age_choles_stat

# Compare Cholesterol by Diagnosis Group
diagnos_choles <- patients_data %>%
  group_by(Diagnosis) %>%
  summarise(
    mean_age = mean(Age),
    mean_choles = mean(Cholesterol),
    count = n() # count per group
  )
# Identify Highest Risk Group
diagnos_choles_arrange <- patients_data %>%
  group_by(Diagnosis) %>%
  summarise(
    mean_age = mean(Age),
    mean_choles = mean(Cholesterol)) %>%
  arrange(desc(mean_choles))

# Analyze Female Subgroup

female_lipid <- patients_data %>%
  filter(Gender == "F") %>%
  group_by(Diagnosis) %>%
  summarise(mean_age = mean(Age),
            mean_choles = mean(Cholesterol),
            count = n()) %>%
  arrange(mean_choles)

# Remove Derived Variables
# Here, removing total_BP column from combined_bp data frame

removed_column <- combined_bp %>%
  select(!total_BP) # or mutate(total_BP = NULL)

# Convert Blood Pressure Data to Long Format

library(tidyr)

data_longer_format <- patients_data %>%
  pivot_longer(cols = c(BP_Sys, BP_Dia),
               names_to = "BP_Type",
               values_to = "Value")

data_longer_format

# Convert the Long Format Back to Wide Format
  # Reverting to former format
data_wider_format <- data_longer_format %>%
  pivot_wider(names_from = "BP_Type",
              values_from = "Value" )

data_wider_format


# Compare Two Study Cohorts (Medium–Hard)

cohort_A_current <- c(1:10)
cohort_B_followup <- c(2,3,7,10,11,12)

common_patients <- intersect(cohort_A_current,cohort_B_followup)
common_patients
unique_cohort_A <- setdiff(cohort_A_current,cohort_B_followup)
unique_cohort_A


