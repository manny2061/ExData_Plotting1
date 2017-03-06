setwd("../Downloads/exdata%2Fdata%2Fhousehold_power_consumption/")
dir()
#png(file = "plot4.png") # only activate for creating png file
par(mfrow= c(2,2), mar = c(4,4,2,1))
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
Twoday_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
data1<- transform(Twoday_data, Time = strptime(paste(Date,Time), format="%d/%m/%Y %H:%M:%S"))
with(data1, plot(data1$Time, data1$Global_active_power, type = "l", 
                 ylab = "Global Active Power (Kilowatts)", xlab = ""))
with(data1, plot(data1$Time, data1$Voltage, type = "l", ylab = "Voltage", xlab = "datetime"))
with(data1, plot(data1$Time, data1$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub metering"))
with(data1, points(data1$Time, data1$Sub_metering_2, type = "l", col= "red"))
with(data1, points(data1$Time, data1$Sub_metering_3, type = "l", col = "blue"))
legend("topright", legend = c("sub_metering_1","sub_metering_3","sub_metering_3"), 
       col = c("black", "red", "blue"), lty =1)
with(data1, plot(data1$Time, data1$Global_reactive_power, type = "l", ylab = "Global_ reactive_power", 
                 xlab= "datetime"))
 #dev.off() #only activate when creating png file.


