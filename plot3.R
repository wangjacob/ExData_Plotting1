# plot 3
# load data into workspace using data_prep.R scrip
source("data_prep.R")
# plot the data
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

plot(subData$dateTime, subData$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(subData$dateTime, subData$Sub_metering_2, col = "red")
lines(subData$dateTime, subData$Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()