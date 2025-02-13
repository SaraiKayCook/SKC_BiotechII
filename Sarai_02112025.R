data(diamonds)
ggplot(diamonds, aes(carat, price)) +
  geom_point(mapping = aes(color = cut)) +
  geom_smooth(formula = y ~ x, method = "lm") +
  scale_color_viridis_d() +
  xlim(0, 5.5) + ylim(0, 20000) +
  theme_minimal() +
  theme(panel.grid.minor = element_blank())
ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black")
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_line()
ggplot(diamonds, aes(x = cut, y = price)) +
  geom_boxplot()
ggplot(diamonds, aes(x = cut)) +
  geom_bar()
ggplot(diamonds, aes(x = cut, y = price)) +
  geom_violin()
ggplot(diamonds, aes(x = "", fill = cut)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  theme_void()
ggplot(diamonds, aes(x = cut, fill = color)) +
  geom_bar(position = "stack") +
  labs(x = "Cut",
       y = "Number",
       title = "Number of Diamonds per Cut")
data()
data(Indometh)
ggplot(Indometh, aes(time, conc)) +
  geom_point(mapping = aes(color = Subject)) +
  scale_color_viridis_d() +
  labs(x = "Time",
       y = "Concentration",
       title = "Concentration of Indomethacin Over Time")
data()
