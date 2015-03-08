# load data
source("data.R")
# plot figure3
png("./plot/plot3.png", width = 480, height = 480)
plot(data$Time, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l", col = "black")
lines(data$Time, data$Sub_metering_2, col='red')
lines(data$Time, data$Sub_metering_3, col = "blue")

# put legend with box
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue")
)
dev.off()