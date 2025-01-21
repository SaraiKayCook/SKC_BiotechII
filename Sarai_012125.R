1+1
hello
"hello"
2*3
data = c(1,2,3)
data
View(data)

mydataframe <- data.frame(
  name = c("Cook","Smith"),
  age = c(26, 30),
  height = c(162, 170)
  
)

mydataframe
install.packages("ggplot2")
library("ggplot2")
library(ggplot2)
getwd()
attach(mydataframe)
plot(age ~ height)
