# EXPLORATORY DATA ANALYSIS - COURSE PROJECT 1
# loaddata.R: load, subset, and transform data for all plots

library(data.table)
library(lubridate)

# Read file into a data table
alldata <- read.table("household_power_consumption.txt", header = TRUE, 
                      sep = ";", na.strings = "?", 
                      colClasses = c(rep("character", 2), rep("numeric", 7)))
alldata <- data.table(alldata)

# Convert Date column
alldata$Date <- as.Date(alldata$Date, format = "%d/%m/%Y")

# Subset only the desired two days
plotdata <- alldata[alldata$Date >= "2007-02-01" & alldata$Date <= "2007-02-02"]
rm("alldata")

# Put Date and Time together 
plotdata$DateTime <- ymd(plotdata$Date) + hms(plotdata$Time)
