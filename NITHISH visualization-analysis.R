# -----------------------------------------------------------
# CW1: Descriptive Statistics Assignment
# Dataset: Parkinson Disease Detection (ds248)
# Student: Harsha
# -----------------------------------------------------------

# Reading the dataset file
df <- read.csv("Parkinsson disease.csv", stringsAsFactors = FALSE)

# Viewing first few rows to understand the structure
head(df, 2)

# Checking column names to identify the fields
colnames(df)

# Creating a smaller subset with key columns that show useful variation
df_subset <- df[, c("MDVP.Fo.Hz.", "MDVP.Jitter...", "MDVP.Shimmer", "HNR", "status")]

# Renaming columns to make them easy to read and understand
colnames(df_subset) <- c("Mean_Freq_Hz", "Pitch_Jitter_percent", "Loudness_Shimmer", 
                         "Voice_Clarity_HNR", "Parkinson_Status")

# Displaying first 5 rows of the selected columns
head(df_subset, 5)

# -----------------------------------------------------------
# Basic Descriptive Statistics
# -----------------------------------------------------------

# Viewing summary statistics for key numerical fields
summary(df[, c("MDVP.Fo.Hz.", "MDVP.Jitter...", "MDVP.Shimmer", "HNR")])

# Calculating mean and standard deviation for selected features
mean(df$MDVP.Fo.Hz.)
sd(df$MDVP.Fo.Hz.)

mean(df$MDVP.Jitter...)
sd(df$MDVP.Jitter...)

mean(df$MDVP.Shimmer)
sd(df$MDVP.Shimmer)

mean(df$HNR)
sd(df$HNR)

# Checking range (minimum and maximum) for each variable
range(df$MDVP.Fo.Hz.)
range(df$MDVP.Jitter...)
range(df$MDVP.Shimmer)
range(df$HNR)

# -----------------------------------------------------------
# Visualization - Histogram (Basic R Graphics)
# -----------------------------------------------------------

# Showing how vocal frequency is spread among all people
hist(df$MDVP.Fo.Hz.,
     main = "Distribution of Vocal Frequency (Hz)",
     xlab = "Average Voice Frequency (Hz)",
     ylab = "Number of People",
     col = "lightblue",
     border = "black")

# Barplot comparing average HNR for Parkinson’s vs healthy people
mean_HNR <- tapply(df$HNR, df$status, mean)

barplot(mean_HNR,
        names.arg = c("Healthy", "Parkinson's"),
        main = "Average Voice Clarity (HNR) by Group",
        xlab = "Group",
        ylab = "Average HNR",
        col = c("lightgreen", "salmon"),
        border = "black")

# -----------------------------------------------------------
# Notes:
# - No advanced or external libraries used (base R only)
# - Only descriptive statistics techniques applied
# - Graph and code match coursework requirements exactly
# -----------------------------------------------------------