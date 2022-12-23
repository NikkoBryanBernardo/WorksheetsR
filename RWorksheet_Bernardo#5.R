students <- data.frame("Course Year"= c("1st","2nd","3rd","4th"), "2019-2020" = c(80, 75, 70, 60))
students

stud_data <- c("1st" = 80, "2nd" = 75, "3rd" = 70, "4th" = 60)
barplot(stud_data)

stud_data <- c("1st" = 80, "2nd" = 75, "3rd" = 70, "4th" = 60)
barplot(stud_data, main = "Enrollment of BS Computer Science", xlab = "number of students", ylab = "Course Year")

debit <- c("Food","Electricity","Savings","Miscellaneous_expenses")
money <- c(60, 10, 5, 25)

spend <- data.frame(debit, money)
spend

tbl <- table(spend)
tbl

money = c(60, 10, 5, 25)

data <- round(money/sum(money)*100,1)
data <- paste(data, "%", sep = " ")

piechart <- pie(money, labels = data, cex = 0.8 , col = rainbow(4),main = "De Jesus family Monthly Expense") 
legend ("topright", c("Food", "Electricity", "Savings", "Miscellaneous_expenses"), 
        cex = 0.8 , fill = rainbow(4))

money = c(60, 10, 5, 25)

data <- round(money/sum(money)*100,1)
data <- paste(data, "%", sep = " ")

piechart <- pie(money, labels = data, cex = 0.8 , col = rainbow(4),main = "De Jesus family Monthly Expense") 
legend ("topright", c("Food", "Electricity", "Savings", "Miscellaneous_expenses"), 
        cex = 0.8 , fill = rainbow(4))

data(mtcars)

mcars <-(mtcars$mpg)
mcars

hist(mtcars$mpg)

hist(mtcars$mpg, breaks=12, col="red")

x <- mtcars$mpg
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)

data("iris")

species <- data.frame(iris)
species

setosaDF <- data.frame(iris)
setosaDF

versicolorDF <- data.frame(iris)
versicolorDF

virginicaDF <- data.frame(iris)
virginicaDF

setosa <- subset(setosaDF, Species == 'setosa')
setosa

versicolor <- subset(versicolorDF, Species == 'versicolor')
versicolor

virginica <- subset(virginicaDF, Species == 'virginica')
virginica

setosa1 <- colMeans(setosa[sapply(setosaDF, is.numeric)])
setosa1

virginica1 <- colMeans(virginica[sapply(virginicaDF, is.numeric)])
virginica1

versicolor1 <- colMeans(versicolor[sapply(versicolorDF, is.numeric)])
versicolor1

combine <- rbind(setosa1, versicolor1, virginica1)
dfcombine <- data.frame(combine)
dfcombine

barplot(height = as.matrix(dfcombine), main = "Iris Data", 
        ylab = "Mean Scores", 
        beside = T, col = rainbow(3))

