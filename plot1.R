#Reading the file
alldata <- read.table("./household_power_consumption.txt",header = TRUE, sep=";", stringsAsFactors=FALSE)
#Subsetting the file
data <- subset(alldata,Date=="1/2/2007"|Date== "2/2/2007")
#Plot
png("plot1.png", width=480, height=480)
hist((as.numeric(as.character(data$Global_active_power))), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()
