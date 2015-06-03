# EXPLORATORY DATA ANALYSIS - COURSE PROJECT 1
# plot2.R: Create Plot 2

# Load plot data if not loaded yet
if (! exists("plotdata")) {
        source("loaddata.R")
}

# Open PNG device and create output file
png(filename = "plot2.png", width = 480, height = 480)

# Create plot and send to the file
plot(plotdata$DateTime, plotdata$Global_active_power, 
     xlab = "", ylab = "Global Active Power (kilowatts)", 
     type = "l")

# Close the file device
dev.off()
