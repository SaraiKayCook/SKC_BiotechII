x <- 1
x<-1
x < -1
x
(X <- -1)
(y <- 2)
y <- 2
X == x
X != x
a <- 2.5
class(a)

b <- 1L
class(b)

c <- "one"
class(c)

d <- TRUE
class(d)

e <- FALSE
class(e)

f <- 1+1i
class(f)

vector <- c(1,2,3,4)
matrix <- matrix (vector, nrow = 2, ncol = 2)
df <- data.frame(id = c("A","B","C","D"), values = vector)

num_vec <- numeric(5)
num_vec <- c(1,2,3,4)
num_vec[3]
num_vec[3] <- num_vec[4]
cha_vec <- c("this","is","a","vector")
cha_vec[c(1,4)]
names(num_vec) <- c("first","second","third","fourth")
num_vec[c("second","fourth")]

vec_num <- c(2,4,6,8,10)
vec_cha <- c("two","four","six","eight","ten")
names(vec_num) <- vec_cha
new_vec <- vec_num[c(1,3,5)]
new_vec2 <- names(new_vec)

(x+y)*(x-y)
y/x
x^2
2^(x*y)
sqrt(x)
log10(y)
log(y)
log(100,base = 3)

Leaf_area <- c(2.5,1.6,2.2,2.6)
Leaf_mass <- c(22,15,20,24)
mean(Leaf_area, trim = 0, na.rm = FALSE)
mean(Leaf_mass, trim = 0, na.rm = FALSE)
median(Leaf_area)
median(Leaf_mass)
max(Leaf_area)
max(Leaf_mass)
min(Leaf_area)
min(Leaf_mass)
max(Leaf_mass) > min(Leaf_area)
LMA <- c(Leaf_mass/Leaf_area)
mean(LMA)
median(LMA)
max(LMA)
min(LMA)
