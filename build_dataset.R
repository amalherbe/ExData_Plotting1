if (!file.exists("household_power_consumption.txt")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                "household_power_consumption.zip")
  unzip("household_power_consumption.zip")
}

fulldata <- read.table("household_power_consumption.txt",
                         header=TRUE,
                         sep=";",
                         colClasses=c("character", "character", rep("numeric",7)),
                         na.strings="?") 

#subset
dataset <- fulldata[which (fulldata$Date %in% c("1/2/2007","2/2/2007")),]

#change values
dataset$Time <- strptime(paste(dataset$Date, dataset$Time),
                         "%d/%m/%Y %H:%M:%S")
dataset$Date <- as.Date(dataset$Date,
                        format = "%d/%m/%Y")


