setwd("../Downloads/exdata%2Fdata%2Fhousehold_power_consumption/")
dir()
#png(file = "plot1.png")  #only activate for creating png file
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
Twoday_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
data1<- transform(Twoday_data, Date = as.Date(Date, format= "%d/%m/%Y"),
                  Twoday_data, Global_active_power = as.numeric(Global_active_power))
with(data1, hist(data1$Global_active_power, 
                 main = "Global Active Power",
                 col = "red",
                 xlab = "Global Active Power (kilowatts)"))
#dev.off() #only activate when creating png file.