
# load data
source("data.R")
# plot figure1
png("./plot/plot1.png", width = 480, height = 480)
hist(data$Global_active_power, main = "Global Active power", col = "red", xlab = "Global Active Power (kilowatts)" )
dev.off()