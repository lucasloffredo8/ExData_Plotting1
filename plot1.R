dataFile <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
dataFile1 <- transform(dataFile, Date = as.character(Date))
y <- subset(dataFile1, Date == "1/2/2007")
z <- rbind(y, subset(dataFile1, Date == "2/2/2007"))
a <- transform(z, Global_active_power = as.numeric(as.character(Global_active_power)))
png(file = "plot1.png")
hist(a[, "Global_active_power"], main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "orangered")
dev.off()