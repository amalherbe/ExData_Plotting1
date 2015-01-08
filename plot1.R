source("build_dataset.R")

png(filename = "plot1.png",
    width = 480, height = 480, 
    units = "px",
    antialias = "cleartype"
    )

hist(dataset$Global_active_power,
     right=FALSE,
     col=c("red"),
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.off()
