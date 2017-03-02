setwd("../Downloads/exdata%2Fdata%2Fhousehold_power_consumption/")
dir()
data <- read.csv("household_power_consumption.txt", sep = ";")
data1<- transform(Twoday_data, Date = as.Date(Date))
Twoday_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
str(Twoday_data)

Twoday_data[,1][1]
with(Twoday_data,hist(as.numeric(Twoday_data$Global_active_power)))


