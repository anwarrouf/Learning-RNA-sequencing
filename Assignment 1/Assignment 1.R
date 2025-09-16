# Q1. Add Two Gene Counts
# You sequenced Gene A and Gene B from a biopsy.
# Gene A had 120reads, and Gene B had 200 reads. You want to calculate their combined expression
# Add the two counts using R
GeneA_read <- 120
GeneB_read <- 200
combined_expression <- GeneA_read + GeneB_read
combined_expression

# Q2. Multiply Read Depths from Two Runs
# You received 500,000 and 600,000 reads from two sequencing runs.
# This might happen if you re-sequence a sample to improve coverage
# Multiply the two read counts to estimate total read pairs
run_A <- 500000
run_B <- 600000
total_read_pairs <-run_A*run_B
total_read_pairs

# Q3. Calculate Fold-Change in Expression
# Gene X had 300 reads in Control and 150 reads in Treated.
# Fold-change helps determine whether a gene is upregulated or downregulated
# Calculate fold-change by dividing treated count by control
control <- 300
treated <- 150
fold_change <- treated/control
fold_change

# Q4. Remainder of Reads per Lane
# Each sequencing lane holds 250,000 reads.
# Your sample had 1,001,000 reads
# Use the modulo operator to find leftover reads that didn’t fit evenly
lane_read <- 250000
sample_read <- 1001000
leftover_read <- sample_read%%lane_read
leftover_read

# Q5. Store a Gene Count in a Variable
# You counted 350 reads for a novel immune gene
# Assign this number to a variable named gene_x_count. Then print it.
gene_x_count <- 350
print(gene_x_count)

# Q6. Add Counts from Two Patients
# Patient A had 100 reads, and Patient B had 120 reads for the same gene.
# Store both counts in variables and calculate the total expression.
patient_A <- 100
patient_B <- 120
total_expression <- patient_A+patient_B
total_expression

# Q7. Update a Mistaken Value
# The count from Patient B was updated from 120 to 130 after data correction
# Update the value and recalculate the total
patient_B <- 120
patient_B_corrected <- 130
total_expression_corrected <- patient_A + patient_B_corrected
total_expression_corrected

# Q8. Store the Name of a Marker Gene
# You’re studying CD274, an immune checkpoint marker also known asPD-L1
# Store "CD274" in a variable called marker_gene
marker_gene <- "CD274"

# Q9. Check the Data Type of a Count
# R needs to know if your data is numeric before performing calculations
# Assign x <- 100, then check its data type with class(x).
x <- 100
class(x)

# Q10. Check the Type of a Gene Name
# Text like "TP53" is stored as a character in R
# Assign "TP53" to a variable and check its class.
gene_name <- "TP53"
class(gene_name)

# Q11. Logical Flag for Marker Gene
# Sometimes we want to tag a gene as a marker using TRUE/FALSE logic
# Create a variable is_marker <- TRUE and check its type using class().
is_marker <- TRUE
class(is_marker)

# Q12. Create a Vector of Gene Counts
# You collected counts for TP53, BRCA1, and EGFR: 120, 150, and 130 respectively
# Create a vector counts <- c(120, 150, 130).
count1 <- 120
count2 <- 150
count3<- 130
gene_counts <- c(count1,count2,count3)
gene_counts

# Q13. Assign Gene Names to Counts
# You want each number in the vector to be clearly labeled with a gene name
# Assign names using names(counts) <- c("TP53", "BRCA1", "EGFR")
names(gene_counts) <- c("TP53","BRCA1","EGFR")
gene_counts

# Q14. Print the Named Vector
# You want to confirm that each count is correctly labeled
# Print the counts vector and inspect its names
print(count1)
print(count2)
print(count3)
print(TP53)

# Extract One Gene’s Count
# EGFR is of special interest due to its role in cancer
# Extract the count for "EGFR" using its name
gene_counts["EGFR"]
# or
gene_counts[3]

# Q16. Extract the First Two Genes
# You are currently analyzing only TP53 and BRCA1.
# Extract these using position-based indexing (e.g., [1:2])
gene_counts[1:2]

# Q17. Create Sample Names
# You processed 3 samples from a patient.
# Create a vector samples <- c("Sample1", "Sample2", "Sample3")
patient_samples <- c("Sample1", "Sample2", "Sample3")


# Q18. Combine Gene Names with Counts
# You stored gene names separately and now want to link them to their counts.
# Create
  # genes <- c("TP53", "BRCA1", "EGFR")
  # counts <- c(120, 150, 130)
# Then name counts using genes
counts <- c(120, 150, 130)
genes <- c("TP53", "BRCA1", "EGFR")
names(counts) <- genes
counts

# Q19. Check the Class of the Count Vector
# You need to ensure your counts are numeric for analysis
# Use class(counts) to check the type
class(counts)


# Q20. Create Patient IDs with Sequence
# You sequenced 5 patients. Each ID should follow the format "Patient_1" to "Patient_5"
# Use paste("Patient", 1:5, sep = "_") to generate the list

patients <- c("Patient", "Patient", "Patient", "Patient", "Patient")
paste(patients,1:5,sep = "_")

# Q21. What Happens in a Mixed Vector?
# You mistakenly created a vector: c("TP53", 100, TRUE)
# R will try to make all elements the same type
# Use class() on this vector to see the result
mixed_vector <- c("TP53", 100, TRUE)
class(mixed_vector)

# Q22. Convert a Character to Numeric
# A count was read as "150" (a character string). You need it as a number
# Convert it using as.numeric("150")
as.numeric("150")

# Q23. Addition with Mixed Types (Fails)
# You try x <- 5 and y <- "6", then run x + y
# Try it and observe the error. Why does it fail?
x <- 5
y <- "6"
x + y
# becuase x is numeric and y is character. Addition cannot be performed between differetn classes of data i.e. numeric and character.

# Q24. Fix the Error and Add
# You realize you need to convert "6" to a number before adding.
# Use as.numeric(y) and then add to x
as.numeric(y)
x + as.numeric(y)

# Q25. Filter Genes with High Expression
# You want to analyze only highly expressed genes (>100 reads).
# From this vector:
  # counts <- c(TP53 = 120, BRCA1 = 90, EGFR = 310)
  # Extract genes with values greater than 100 using logical filtering
counts <- c(TP53 = 120, BRCA1 = 90, EGFR = 310)
counts
TP53 > 100
BRCA1 > 90
EGFR > 310
highly_expressed_genes <- counts[counts > 100]
highly_expressed_genes