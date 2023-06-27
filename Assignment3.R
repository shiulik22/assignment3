#ques-1
library(ggplot2)
data(iris)
ggplot(iris,aes(Sepal.Length,Petal.Length,color= Species))+ geom_point()
#From the graph,it is clear that the flowers of setosa specie are with short Sepal and petal length  
#whereas the versicolor is with medium and the virginica is with medium to high sepal and petal length


#ques-2
library(ggplot2)
data("txhousing")
str(txhousing)  #to check the type of the dataset

#Side-by-side boxplots of all continuous variables based on the column species
boxplot(year ~ city, data = txhousing,main = "Boxplot of year by city")
boxplot(month ~ city, data = txhousing,main = "Boxplot of month by city")
boxplot(sales ~ city, data = txhousing,main = "Boxplot of sales by city")
boxplot(volume ~ city, data = txhousing,main = "Boxplot of volume by city")
boxplot(median ~ city, data = txhousing,main = "Boxplot of median by city")
boxplot(listings ~ city, data = txhousing,main = "Boxplot of listings by city")
boxplot(inventory ~ city, data = txhousing,main = "Boxplot of inventory by city")
boxplot(date ~ city, data = txhousing ,main = "Boxplot of date by city")

#scatterplot of month and sales

ggplot(txhousing,aes(month,sales,color = city))+ geom_point()


#ques-3
library(ggplot2)
titanic <- read.csv("C:/Users/Shiuli/Downloads/titanic.csv")
final_plot <- ggplot(titanic,aes(x= Fare,y= Survived,color = sex))+ geom_boxplot()
show(final_plot)
