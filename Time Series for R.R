data <- read.csv('AirPassengers.csv')
head(data)
tail(data)
summary(data)
dim(data)

class(data)

#renaming the X_passengers column
data['Passengers'] <- data['X.Passengers']
data <- data[, !names(data) %in% c("X.Passengers")]

head(data)

#Times series analysis

data.ts = ts(data, frequency = 12, start=c(1949, 01))
plot.ts(data.ts)
plot(data$Passengers,type = "o")

#The Pattern observed in this time series analysis is both seasonality and trend patterns
#due to the long term increase and repeated pattern observed between regular intervals 
