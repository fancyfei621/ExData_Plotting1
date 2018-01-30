#Reading the file
alldata <- read.table("./household_power_consumption.txt",header = TRUE, sep=";", stringsAsFactors=FALSE)
#Subsetting the file
data <- subset(alldata,Date=="1/2/2007"|Date== "2/2/2007")
#Plot
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, (as.numeric(as.character(data$Global_active_power))), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
