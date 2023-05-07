library(readr)
GDP_US <- read_csv("Downloads/GDP_US.csv")

#Q1
gdp <- GDP_US$GDP
plot(gdp, main = "Time series plot of GDP",
     xlab = "Time", ylab = "GDP", type="b", pch = 19)

#Q2
newgdp <- log(gdp)
plot(newgdp, main = "Time series plot of log(GDP)",
     xlab = "Time", ylab = "log(GDP)", type="b", pch = 19)


#Q3
Quarter <- GDP_US$Quarter
index <- c(seq(gdp))
newgdp.lm <- lm(newgdp~Quarter+index, data = GDP_US)
summary(newgdp.lm)

#Q4
res <- residuals(newgdp.lm)
plot(res, xlab = "Time", ylab = "Residuals", pch = 19)

plot(res, xlab = "Time", ylab = "Residuals", type = "b", pch = 19)


qqnorm(res, pch = 19)

acf(res, main = "Series redisuals of log transformed GDP")

#Q5
sqr <- index ** 2
data.lm <- lm(newgdp~Quarter+index+sqr, data = GDP_US)
summary(data.lm)

#Q7
newres <- residuals(data.lm)
plot(newres, xlab = "Time", ylab = "Residuals", pch = 19)
plot(newres, xlab = "Time", ylab = "Residuals", type = "b", pch = 19)

qqnorm(newres, pch = 19)
acf(newres, main = "Series redisuals of newly transformed GDP")


#Q8
et <- c(newres)
et1 <- diff(newres)
D <- sum(et1 ** 2)/sum(et ** 2)
D

numera <- sum(et1 ** 2)
numera
denomi <- sum(et ** 2)
denomi

r <- numera / denomi
r

#Q9
install.packages("lmtest")
library(lmtest)
dwtest(data.lm)




