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
     border="black")
m <- mean(Cleaned_Happiness)
s <- sd(Cleaned_Happiness)

curve(dnorm(x, mean=m, sd=s),
      col="blue", lwd=2, add= TRUE)