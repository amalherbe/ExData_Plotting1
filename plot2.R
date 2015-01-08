source("build_dataset.R")

png(filename = "plot2.png",
    width = 480, height = 480, 
    units = "px",
    antialias = "cleartype"
    )

plot(dataset$Time, dataset$Global_active_power,
     type="l", 
     ylab="Global Active Power (kilowatts)",
     xlab="") 

dev.off()
