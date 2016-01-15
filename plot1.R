setwd("C:/study notes/Data Science/exploratory data analysis/course project1")
mydata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
mydata1$Date <- as.Date(mydata$Date, format = "%d/%m/%Y")
mydata2 <- mydata1[mydata1$Date >= "2007-02-01"& mydata1$Date <= "2007-02-02",]
mydata2$Global_active_power <- as.numeric(mydata2$Global_active_power)
png(filename = "plot1.png")
hist(mydata2$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power(kilowatts)")
dev.off()