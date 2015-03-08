# load data
source("data.R")
# plot figure2
png("./plot/plot2.png", width = 480, height = 480)
plot(data$Time, data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()