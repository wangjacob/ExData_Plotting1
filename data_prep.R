# programing assignment for Course Project 1 of Exploratory Data Analysis
#---------------------------------------------------------------------------------------------------
#  Clean up the workspace
rm(list=ls())

filename <- "household_power_consumption.txt"

## Download and unzip the dataset if it's not in local directory:
if (!file.exists(filename)){
  temp <- tempfile()
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL, temp)
  unzip(temp)
  unlink(temp)
}

allData <- read.table(filename, header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)),
                      na = "?")
allData$Date <- as.Date(allData$Date, format="%d/%m/%Y")

# extract the data only on specific date
subData <- subset(allData, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

# Convert to dates
dateTime <- paste(as.Date(subData$Date), subData$Time)
subData$dateTime <- as.POSIXct(dateTime)