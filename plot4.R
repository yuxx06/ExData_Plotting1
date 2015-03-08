# plot4
# load data
source("data.R")

png("./plot/plot4.png", width = 480, height = 480)
# set figure 2 row and 2 colomn
par(mfrow=c(2,2))
# (1,1)
plot(data$Time, data$Global_active_power, ylab='Global Active Power', xlab='', type='l')
# (1,2)
plot(data$Time, data$Voltage, xlab='datetime', ylab='Voltage', type='l')
# (2,1)
plot(data$Time, data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(data$Time, data$Sub_metering_2, col='red')
lines(data$Time, data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')
# (2,2)
plot(data$Time, data$Global_reactive_power, xlab='datetime', ylab='Global_reactive_power', type='l')

dev.off()