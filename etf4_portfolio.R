library(readxl)

etf4 <- read.csv('myetf4.csv')
str(etf4)

library(xts)

etf4.xts <- as.xts(etf4[, -1], 
            order.by = as.Date(etf4$Index, "%Y-%m-%d"))
head(etf4.xts)
class(etf4.xts)


