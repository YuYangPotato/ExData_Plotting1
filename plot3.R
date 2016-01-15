setwd("C:/study notes/Data Science/exploratory data analysis/course project1")
mydata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
mydata1$Date <- as.Date(mydata$Date, format = "%d/%m/%Y")
mydata2 <- mydata
mydata2 <- mydata1[mydata1$Date >= "2007-02-01"& mydata1$Date <= "2007-02-02",]
mydata2$Global_active_power <- as.numeric(mydata2$Global_active_power)
x <- 1:2880
y1 <- as.numeric(as.character(mydata2$Sub_metering_1))
y2 <- as.numeric(as.character(mydata2$Sub_metering_2))
y3 <- as.numeric(as.character(mydata2$Sub_metering_3))
z1 <- data.frame(x, y1)
z2 <- data.frame(x, y2)
z3 <- data.frame(x, y3)

v1 <- c(0, 1440, 2880)

v2 <- c("Thu", "Fri", "Sat")

png(filename = "plot3.png")

plot(x, y1,"n", xlab = "", ylab = "Energy sub metering", xaxt = "n")
axis(side = 1, at = v1, labels = v2, tck = -.05)
lines(z1, type = "l", col = "black")
lines(z2, type = "l", col = "red")
lines(z3, type = "l", col = "blue") 
legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), pch = c("-", "-", "-"), lwd =3, cex = 0.9)
dev.off()