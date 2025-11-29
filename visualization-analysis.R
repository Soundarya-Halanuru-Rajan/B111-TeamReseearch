library(readr)
X2016<-read_csv("2016.csv")

#renaming the coloumns to bit shorter version
colnames(X2016)[4] <-"Happiness"
colnames(X2016)[7] <- "GDP"

#cleaning happiness null values in the dataset to reduce the errors

Cleaned_Happiness <- na.omit(X2016$Happiness)
print(head(Cleaned_Happiness))
