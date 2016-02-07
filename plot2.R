# Plot 2
# load data into workspace using data_prep.R scrip
source("data_prep.R")
# plot the data
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(subData$dateTime, subData$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()