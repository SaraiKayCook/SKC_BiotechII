getwd()
my_dataframe <- read.csv("test_dataframe.csv")
print(my_dataframe)
summary(my_dataframe)
my_dataframe <- read.csv("test_dataframe.csv")
print(my_dataframe)
summary(my_dataframe)
my_df <- data.frame(
  ID = c(1:4),
  Leaf_area = c(2.5, 1.6, 2.2, 2.6),
  Leaf_mass = c(22, 15, 20, 24)
)
print(my_df)
summary(my_df)
my_df$Leaf_area
my_df[2,]
my_df[,2]
my_df[2,2]
my_df[2:3,1:2]
my_df$LMA <- my_df$Leaf_mass / my_df$Leaf_area
print(my_df$LMA)
family <- c("Sarai","Mom","Dad","Christina","Sedric")
my_people <- data.frame(
  ID = c(family),
  Age = c(26, 58, 63, 44, 41),
  Gender = c("female", "female", "male", "female", "male"),
  Avg_commute = c(15, 10, 60, 30, 30)
)
print(my_people)
summary(my_people)
mean(my_people$Age)
mean(my_people$Avg_commute)
min(my_people$Age)
max(my_people$Avg_commute)
num1 <- 1
num2 <- 2
num1 == num2
num1 < num2
!(num1 < num2)
num1 != num2
var1 <- 1
var2 <- "red"
(var1 == 1) & (var2 == "red")
(var1 == 1) & (var2 == "green")
(var1 == 1) | (var2 == "red")
(var1 == 1) | (var2 == "green")
if(num1 == num2)
{
  print("num1 equals num2")
} else
{
  print("num1 does not equal num2")
}
my_function <- function(x, y)
{
  if(x > y)
  {
    val <- x^2
    return(val)
  } else
  {
    val <- x^3
  return(val)
  }
}
my_function(1, 2)
my_function2 <- function(x, y)
{
  val <- x + y
  return(val)
}
my_function2(1, 2)
?sample
activity_function <- function(x){
  random <- sample(1:5, 1)
  if(x == random){
    print("These values are the same!")
  } else
  {
    print("These numbers are not the same!")
  }
}
activity_function(1)
test_function <- function(x){
  random <- sample(1:1000, 1)
  if(x >= random){
    print("Your value is larger")
  } else
  {
    print("Your value is smaller")
  }
}
test_function(948)
