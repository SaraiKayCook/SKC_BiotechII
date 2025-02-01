summary(my_df)
head(my_df)
class(my_df)
str(my_df)
dim(my_df)
names(my_df)
filter(my_df, Leaf_area > 2)
arrange(my_df, Leaf_mass)
select(my_df, Leaf_area)
mutate(my_df, aspect_ratio = Leaf_mass/Leaf_area)
summarize(my_df, mean_area = mean(Leaf_area),
          sd_area = sd(Leaf_area))
my_df %>%
  mutate(aspect_ratio = Leaf_mass/Leaf_area) %>%
  filter(Leaf_area > 2) %>%
  summarize(mean_area = mean(Leaf_area),
            mean_mass = mean(Leaf_mass))
my_df %>%
  group_by(Leaf_area) %>%
  summarize(mean_area = mean(Leaf_area))
install.packages("nycflights13")
library(nycflights13)
print(flights)
filter(flights, month == 7 | month == 8 | month == 9)
arrange(flights, desc(dep_delay))
arrange(flights, dep_delay)
new_flights <- select(flights, month, day, dep_time)
mutate(flights, speed = distance/air_time*60)
delays <- flights %>%
  group_by(origin) %>%
  summarize(
    delay = mean(arr_delay, na.rm = TRUE)
  )
arrange(my_people, desc(Avg_commute))
plot(my_people$Age, my_people$Avg_commute,
     xlab = "Age",
     ylab = "Commute",
     main = "Age vs. Commute",
     col = ifelse(my_people$Gender == "male", "blue", "red"),
     pch = ifelse(my_people$Gender == "male", 19, 15))
legend("topleft", c("male", "female"),
       col = c("blue", "red"),
       pch = c(19, 15))
