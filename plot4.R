# EXPLORATORY DATA ANALYSIS - COURSE PROJECT 1
# plot4.R: Create Plot 4

# Load plot data if not loaded yet
if (! exists("plotdata")) {
        source("loaddata.R")
}

# Open PNG device and create output file
png(filename = "plot4.png", width = 480, height = 480)

# Set plot layout (2 rows x 2 columns)
par(mfrow = c(2, 2))

###################################
# Create 1st plot (row 1, column 1)
plot(plotdata$DateTime, plotdata$Global_active_power, 
     xlab = "", ylab = "Global Active Power", 
     type = "l")

###################################
# Create 2nd plot (row 1, column 2)
plot(plotdata$DateTime, plotdata$Voltage, 
     xlab = "datetime", ylab = "Voltage", 
     type = "l")

###################################
# Create 3rd plot (row 2, column 1)
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
       lty = 1, bty = "n")

###################################
# Create 4th plot (row 2, column 2)
plot(plotdata$DateTime, plotdata$Global_reactive_power, 
     xlab = "datetime", ylab = "Global_reactive_power", 
     type = "l")

# Close the file device
dev.off()
