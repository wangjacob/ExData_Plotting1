# Plot 1
# load data into workspace using data_prep.R scrip
source("data_prep.R")
# plot the data
png("plot1.png", width=480, height=480)
hist(subData$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()





