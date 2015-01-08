source("build_dataset.R")

png(filename = "plot4.png",
    width = 480, height = 480, 
    units = "px",
    antialias = "cleartype",
    type = "windows")

par(mfrow=c(2,2))

plot(dataset$Time, dataset$Global_active_power,
     type="l", 
     ylab="Global Active Power (kilowatts)",
     xlab="") 

plot(dataset$Time, dataset$Voltage, type="l", 
     xlab="datetime", ylab="Voltage") 

plot(dataset$Time, dataset$Sub_metering_1,
     type="l", col="black", 
     xlab="", ylab="Energy sub metering") 
lines(dataset$Time, dataset$Sub_metering_2, col="red") 
lines(dataset$Time, dataset$Sub_metering_3, col="blue") 
legend("topright", 
       bty="n",
       col=c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1) 

plot(dataset$Time, dataset$Global_reactive_power, type="n", 
     xlab="datetime", ylab="Global_reactive_power") 
     lines(dataset$Time, dataset$Global_reactive_power) 

dev.off()