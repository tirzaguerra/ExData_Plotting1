# EXPLORATORY DATA ANALYSIS - COURSE PROJECT 1
# plot3.R: Create Plot 3

# Load plot data if not loaded yet
if (! exists("plotdata")) {
        source("loaddata.R")
}

# Open PNG device and create output file
png(filename = "plot3.png", width = 480, height = 480)

# Create plot with Sub Metering 1 data
plot(plotdata$DateTime, plotdata$Sub_metering_1, col = "black", 
     xlab = "", ylab = "Energy sub metering", 
     type = "l")

# Add data for Sub Metering 2 and 3
lines(plotdata$DateTime, plotdata$Sub_metering_2, col = "red")
lines(plotdata$DateTime, plotdata$Sub_metering_3, col = "blue")

# Add legend
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)

# Close the file device
dev.off()
