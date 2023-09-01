file <- read.table(file = "household_power_consumption.txt", header = T, sep = ";")
newfile2 <- subset(file, file$Date=="1/2/2007" | file$Date =="2/2/2007")
rm(file)
newfile2$Time <- as.POSIXct(paste0(newfile2$Date, newfile2$Time), format ="%d/%m/%Y %H:%M:%S")
str(newfile2)
png(filename = "plot2.png")
plot(newfile2$Time, newfile2$Global_active_power, type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

