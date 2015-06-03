# EXPLORATORY DATA ANALYSIS - COURSE PROJECT 1
# plot1.R: Create Plot 1

# Load plot data if not loaded yet
if (! exists("plotdata")) {
        source("loaddata.R")
}

# Open PNG device and create output file
png(filename = "plot1.png", width = 480, height = 480)

# Create plot and send to the file
hist(plotdata$Global_active_power, main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col = "red")

# Close the file device
dev.off()
