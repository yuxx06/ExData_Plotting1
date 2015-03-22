# load data
setInternet2(use = TRUE)
url<- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile="exdata-data-household_power_consumption.zip")
unzip("exdata-data-household_power_consumption.zip")

# read data into a table
power <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
data <- subset(power, power$Date == "1/2/2007" | power$Date == "2/2/2007")

data$Date <- as.Date(data$Date , "%d/%m/%Y")
data$Time <- paste(data$Date, data$Time, sep=" ")
data$Time <- strptime(data$Time, "%Y-%m-%d %H:%M:%S")
