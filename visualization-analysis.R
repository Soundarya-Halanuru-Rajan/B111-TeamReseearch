library(readr)
X2016<-read_csv("2016.csv")

#renaming the coloumns to bit shorter version
colnames(X2016)[4] <-"Happiness"
colnames(X2016)[7] <- "GDP"

#cleaning happiness null values in the dataset to reduce the errors

Cleaned_Happiness <- na.omit(X2016$Happiness)
print(head(Cleaned_Happiness))
library(readr)
X2016<-read_csv("2016.csv")

#renaming the coloumns to bit shorter version
colnames(X2016)[4] <-"Happiness"
colnames(X2016)[7] <- "GDP"

#cleaning happiness null values in the dataset to reduce the errors

Cleaned_Happiness <- na.omit(X2016$Happiness)
print(head(Cleaned_Happiness))
hist(Cleaned_Happiness,
     freq = FALSE,
     main = "Histogram of Happiness Scores",
     xlab = "Happiness Score")
m <- mean(Cleaned_Happiness)
s <- sd(Cleaned_Happiness)

curve(dnorm(x, mean=m, sd=s),
      col="blue", lwd=2, add= TRUE)