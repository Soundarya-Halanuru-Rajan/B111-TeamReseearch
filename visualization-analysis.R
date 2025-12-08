library(readr)
X2016<-read_csv("2016.csv")

#renaming the coloumns to bit shorter version
colnames(X2016)[4] <-"Happiness"
colnames(X2016)[7] <- "GDP"

#cleaning happiness null values in the dataset to reduce the errors

Cleaned <- na.omit(X2016[, c("Happiness", "GDP")])
Cleaned_Happiness <- Cleaned$Happiness
Cleaned_GDP <- Cleaned$GDP

# Happiness histogram
breaks <- seq(floor(min(Cleaned_Happiness)),
              ceiling(max(Cleaned_Happiness)),
              by = 0.5)

hist(Cleaned_Happiness,
     freq = FALSE,
     main = "Histogram of Happiness Scores",
     xlab = "Happiness Score",
     breaks = breaks,
     ylim = c(0, 0.35),      
     xlim = c(2, 8),
     col = "lightgrey",)

m <- mean(Cleaned_Happiness)
print("mean of happiness")
print(m)
s <- sd(Cleaned_Happiness)
print("standard deviation happiness")
print(s)

curve(dnorm(x, mean=m, sd=s),
      col="blue", lwd=2, add= TRUE)

#creating scatter plot of GDP and Happiness

plot(Cleaned_GDP,
     Cleaned_Happiness,
     main = "Happiness vs GDP per Capita",
     xlab = "Economy (GDP per Capita)",
     ylab = "Happiness Score",
     pch = 19,
     col = "grey",
     )

abline(
  lm(Cleaned_Happiness ~ Cleaned_GDP),
  col = "blue",
  lwd = 2
)
#corelation test pearson
result <- cor.test(
  Cleaned_Happiness,
  Cleaned_GDP,
  method = "pearson"
)

print(result)

#creating graph for GDP
hist(Cleaned_GDP,
     main = "Histogram of GDP per Capita",
     xlab = "GDP per Capita",
     col  = "lightgrey",)
