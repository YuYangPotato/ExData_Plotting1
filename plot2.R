setwd("C:/study notes/Data Science/exploratory data analysis/course project1")
mydata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
mydata1$Date <- as.Date(mydata$Date, format = "%d/%m/%Y")
mydata2 <- mydata
mydata2 <- mydata1[mydata1$Date >= "2007-02-01"& mydata1$Date <= "2007-02-02",]
mydata2$Global_active_power <- as.numeric(mydata2$Global_active_power)
x <- 1:2880
y <- mydata2$Global_active_power
z <- data.frame(x, y)
v1 <- c(0, 1440, 2880)
v2 <- c("Thu", "Fri", "Sat")
png(filename="plot2.png")
plot(z, type = "l", ylab = "Global Active Power(kilowatts)", xaxt = "n")
axis(side = 1, at = v1, labels = v2, tck = -.05)
dev.off()