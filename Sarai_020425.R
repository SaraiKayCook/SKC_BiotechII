data(mtcars)
scatter.smooth(x = mtcars$mpg, y = mtcars$disp, main = "Disp ~ mpg")
cor.test(mtcars$mpg, mtcars$disp)
cor_result <- cor.test(mtcars$mpg, mtcars$disp)
cor_result$estimate
cor_result$p.value
install.packages("corrplot")
library(corrplot)
corrplot(cor(mtcars))

data()
data(trees)
summary(trees)
corrplot(cor(trees))
girth_height <- cor.test(trees$Girth, trees$Height)
girth_volume <- cor.test(trees$Girth, trees$Volume)
height_volume <- cor.test(trees$Height, trees$Volume)
girth_height$estimate
girth_height$p.value
girth_volume$estimate
girth_volume$p.value
height_volume$estimate
height_volume$p.value
scatter.smooth(x = trees$Girth, y = trees$Volume, main = "Volume ~ Girth")

summary(sleep)
data(sleep)
t.test(extra ~ group, data = sleep)
t.test(trees$Girth, mu = 5)
fish_size <- data.frame(
  length = c(12, 3, 8, 17, 32, 9, 10, 24, 28, 13),
  weight = c(23, 9, 12, 25, 43, 19, 21, 36, 38, 24)
)
t_test_result <- t.test(fish_size$length, fish_size$weight)
t_test_result$p.value

data("PlantGrowth")
res_aov <- aov(weight ~ group, data = PlantGrowth)
summary(res_aov)
TukeyHSD(res_aov)
data2 <- data.frame(
  group = rep(c("Group1", "Group2", "Group3"), each = 10),
  value = rnorm(30)
)
head(data2)
res_aov2 <- aov(value ~ group, data = data2)
summary(res_aov2)
tukey_result <- TukeyHSD(res_aov2)
print(tukey_result)

data(cars)
linear_mod <- lm(dist ~ speed, data = cars)
linear_mod2 <- lm(mpg ~ disp + qsec, data = mtcars)
summary(linear_mod2)

data()
data("USArrests")
#Do states with higher urban populations have higher murder rates?
Murder_ttest <- t.test(USArrests$UrbanPop, USArrests$Murder)
murder_pop <- cor.test(USArrests$UrbanPop, USArrests$Murder)
print(murder_pop)
murder_pop$estimate
murder_pop$p.value
scatter.smooth(x = USArrests$UrbanPop, y = USArrests$Murder,
               main = "Murder Rates by Urban Population",
               xlab = "Urban Population",
               ylab = "Murder Rates",
               pch = 19,
               col = "Red")
murder_anova <- aov(UrbanPop ~ Murder, data = USArrests)
print(murder_anova)
murder_lr <- lm(UrbanPop ~ Murder, data = USArrests)
print(murder_lr)
