#course- Exploratory Data Analysis
#Project 1
#-------------------------Plot 2--------------------------------------

#reading dataset
household_power_consumption <- read.table("F:/coursera/data science specialisation-JHU/data exploratory analysis/Project_1/household_power_consumption.txt",header = T,sep = ";")
str(household_power_consumption)
#setting new column as combined of Date and time
household_power_consumption$date_time <- as.POSIXct(paste(household_power_consumption$Date,household_power_consumption$Time),format = "%d/%m/%Y %H:%M:%S")
str(household_power_consumption)
library(dplyr)
#subsetting based on date and time required 
household_power_consumption <- subset(household_power_consumption, date_time >= "2007-02-01" & date_time <= "2007-02-03")

png("plot 2.png",width = 480, height = 480)
plot(household_power_consumption$date_time,household_power_consumption$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()