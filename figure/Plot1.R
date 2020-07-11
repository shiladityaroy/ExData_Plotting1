setwd("E:/Coursera/course_4/week_1")
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_s1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data_s1$Date <- as.Date(data_s1$Date, format="%d/%m/%Y")
hist(data_s1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot_1.png", height=480, width=480)
dev.off()
