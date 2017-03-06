setwd("../Downloads/exdata%2Fdata%2Fhousehold_power_consumption/")
dir()
#png(file = "plot2.png") # only activate for creating png file
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
Twoday_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
data1<- transform(Twoday_data, Date = as.Date(Date, format= "%d/%m/%Y"),
                  Twoday_data, Global_active_power = as.numeric(Global_active_power),
                  Twoday_data, Time = strptime(paste(Date,Time), format="%d/%m/%Y %H:%M:%S"))
with(data1, plot(data1$Time, data1$Global_active_power, type = "l", 
                 ylab = "Global Active Power (Kilowatts)", xlab = ""))
#dev.off()# only activate when creating png file.