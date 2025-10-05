# Problem 1: Evaluate Glucose Level
# Background: A patient’s fasting blood glucose (FBG) was measured at 112 mg/dL.
# Task:
#   Use an if-else statement to classify the glucose value as:
#   • "Normal" if < 100
# • "Prediabetes" if between 100–125
# • "Diabetes" if ≥126
FBG <- 112
if (FBG < 100){
  print("Normal")
} else if (FBG >= 100 & FBG <= 125){
  print("Prediabetes")
} else{
  print("Diabetes")
}

# Problem 2: Check for Fever
# Background: A patient’s temperature reading is 38.2°C.
# Task: Write a conditional statement that prints "Fever Detected" if the temperature > 37.5,
# otherwise "Normal Temperature".

temp <- 38.2
if (temp > 37.5){
  print("Fever Detected")
} else{
  print("Normal temperature")
}

# Problem 3: BMI Classification
# Background: You calculated BMI = 29.5 for a study participant.
# Task: Use if-else to classify as "Normal", "Overweight", or "Obese".

BMI <- 29.5
if (BMI < 18.5){ # This classfication is taken from CDC website
  print("underweight")
} else if (BMI >= 18.5 & BMI < 25){
  print ("Healthy weight")
} else if (BMI >= 25 & BMI < 30){
  print ("Overweight")
} else{
  print ("Obesity")
}

# Problem 4: Lab Result Flagging
# Background: Hemoglobin level is 10.5 g/dL.
# Task: If Hb < 12 → print "Anemia"; otherwise → "Normal"
hb <- 10.5
if (hb < 12){
  print ("Anemia")
} else {
  print("Normal")
}

# Problem 5: Evaluate Cholesterol Panel
# Background: A participant’s LDL cholesterol is 165 mg/dL.
# Task:
#   Write an if-else that prints:
#   • "Optimal" if < 130
# • "Borderline" if 130–159
# • "High" if ≥160

LDL <- 165
if (LDL < 130){
  print ("Optimal")
} else if (LDL>= 130 & LDL < 159){
  print("Borderline")
} else{
  print("High")
}

# Problem 6: Create a Clinical Dataset
# Background: You are analyzing 4 patients with the following data:
#   Name Age BMI BP_Systolic
# Aisha 45 31.2 150
# Rahman 52 28.5 165
# Rima 37 24.1 120
# Hossain 60 33.4 175
# Task: Create a data frame named patients.

Name <- c("Aisha", "Rahman", "Rima", "Hossain")
Age <- c(45, 52, 37, 60)
BMI <- c( 31.2, 28.5, 24.1, 33.4)
BP_systolic <- c(150, 165, 120, 175)

df <- data.frame(Name, Age, BMI, BP_systolic)

# Problem 7: Add a Hypertension Column
# Background: Blood pressure ≥140 mmHg indicates hypertension.
# Task: Add a new column "Hypertensive" using ifelse() with "Yes" or "No".

df$hyper <- ifelse (df$BP_systolic >= 140, "Yes", "No")
df

# or

for (i in 1:nrow(df)){
  if (df$BP_systolic[i] >= 140){
    df$hyper[i] <- "Yes"
  } else{
    df$hyper[i] <- "No"
  }
}
df

# Problem 8: Add an Obesity Status Column
# Background:
#   • "Obese" if BMI ≥30
# • "Overweight" if BMI 25–29.9
# • "Normal" if BMI <25
# Task:
#   Use nested ifelse() to classify patients and store in a new column "BMI_Status"

df$BMI_status <- ifelse(df$BMI >= 30, "Obese",
                        ifelse(df$BMI >= 25 & df$BMI <=29.9,"Overweight",
                               ifelse(df$BMI < 25,"Normal", NA)))
df

# Problem 9: Identify Elderly Patients
# Background: A geriatric trial defines elderly as Age ≥ 50.
# Task: Filter the data frame to show only elderly participant

elderly <- df[df$Age>=50, ]
elderly

# Problem 10: Assign Risk Level
# Background:
# A hospital uses a simple rule to label cardiac risk:
  # High Risk: Age > 50 AND Hypertensive == "Yes"
  # Moderate Risk: Only one of these conditions
  # Low Risk: None
# Task: Add a new column "Risk_Level" using conditional logic

df$Risk_level <- ifelse(df$Age > 50 & df$hyper == "Yes", "High risk",
                        ifelse(df$Age > 50 | df$hyper == "Yes", "Moderate risk", "Low risk"))
df

# Problem 11: Daily Data Entry Reminder
# Background: You want the system to remind lab technicians to upload data each morning for 7 days.
# Task: Use a for loop to print "Please upload lab data for Day X" where X = 1–7

for (i in 1:7){
  print(paste("Please upload data for Day", i, sep=" "))
}

# Problem 12: Sequential Year Tracker
# Background: The lab wants a yearly log for 2015 to 2025.
# Task: Use a for loop to print "Processing year: <year>" for each year in that range

for (i in 2015:2025){
  print(paste("Processing year:", i, sep = " "))
}

# Problem 13: Viral Load Tracking
# Background: You have a vector of viral loads (copies/mL): c(100, 550, 1200, 20000, 850).
# Task: Use a for loop and conditional logic
# • Print "Normal" if < 1000
# • "Elevated" if between 1000–9999
# • "Critical" if ≥ 10000

viral_loads <- c(100, 550, 1200, 20000, 850)

load_tracking <- ifelse(viral_loads < 1000, "Normal",
                        ifelse(viral_loads >= 1000 & viral_loads < 10000, "Elevated",
                               ifelse(viral_loads >= 100000, "Critical", "NA")))
print(load_tracking)

for (i in viral_loads){
  if(i < 1000){
    print("Normal")
  } else if(i >= 1000 & i < 10000){
    print("Elevated")
  } else{
    print("Critical")
  }
}

