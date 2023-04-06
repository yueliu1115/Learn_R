plot(mtcars$wt, mtcars$mpg)


library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point()


ggplot(data = NULL, aes(x = mtcars$wt, y = mtcars$mpg)) +
  geom_point()


ggplot(data = NULL, 
       aes(x = mtcars$wt,
           y = mtcars$mpg)) +
  geom_point()


plot(pressure$temperature, pressure$pressure, type = "l")



plot(pressure$temperature, pressure$pressure, type = "l")
points(pressure$temperature, pressure$pressure)

lines(pressure$temperature, pressure$pressure/2, col="red")
points(pressure$temperature, pressure$pressure/2, col="red")


library(ggplot2)

ggplot(pressure, aes(x = temperature, y = pressure)) + 
  geom_line()

ggplot(pressure, aes(x = temperature, y = pressure)) + 
  geom_line() + 
  geom_point()

BOD

barplot(BOD$demand, names.arg = BOD$Time)

barplot(table(mtcars$cyl))

library(ggplot2)

ggplot(BOD, aes(x = Time, y = demand)) + 
  geom_col()


ggplot(BOD, aes(x = factor(Time), y = demand)) + 
  geom_col()


ggplot(data = mtcars, aes(x = cyl)) + 
  geom_bar()

ggplot(data = mtcars, aes(x = factor(cyl))) + 
  geom_bar()

hist(mtcars$mpg)

hist(x = mtcars$mpg, breaks = 10)


library(ggplot2)

ggplot(mtcars, aes(x = mpg)) + 
  geom_histogram()


ggplot(mtcars, aes(x = mpg)) + 
  geom_histogram(binwidth = 4)


plot(ToothGrowth$supp, ToothGrowth$len)


# Formula syntax
boxplot(len ~ supp, data = ToothGrowth)

# Put interaction of two variables on x-axis
boxplot(len ~ supp + dose, data = ToothGrowth)


library(ggplot2)

ggplot(ToothGrowth, aes(x = supp, y = len)) + 
  geom_boxplot()


ggplot(data = ToothGrowth,
       aes(x = interaction(supp, dose), y = len)) + 
  geom_boxplot()


curve(x^3 - 5*x, from = -4, to = 4)


# Plot a user-defined function

myfun <- function(xvar){
  1/(1 + exp(-xvar + 10))
}

curve(myfun(x), from = 0, to = 20)

# Add a line:
curve(1 - myfun(x), add = TRUE, col = "red")

library(ggplot2)

ggplot(data = data.frame(x = c(0, 20)), aes(x = x)) + 
  stat_function(fun = myfun, geom = "line")


