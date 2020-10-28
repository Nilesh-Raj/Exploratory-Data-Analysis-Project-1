#course- Exploratory Data Analysis
#Project 1
#-------------------------Plot 4--------------------------------------

#reading dataset
household_power_consumption <- read.table("F:/coursera/data science specialisation-JHU/data exploratory analysis/Project_1/household_power_consumption.txt",header = T,sep = ";")
str(household_power_consumption)
#setting new column as combined of Date and time
household_power_consumption$date_time <- as.POSIXct(paste(household_power_consumption$Date,household_power_consumption$Time),format = "%d/%m/%Y %H:%M:%S")
str(household_power_consumption)

#subsetting based on date and time required 
household_power_consumption <- subset(household_power_consumption, date_time >= "2007-02-01" & date_time <= "2007-02-03")
png('plot 4.png',width = 480,height = 480)
par(mfrow = c(2,2))

plot(household_power_consumption$date_time,household_power_consumption$Global_active_power
     ,type = "l",xlab = "",ylab = "Global_active_power")

plot(household_power_consumption$date_time,household_power_consumption$Voltage,type = "l",xlab = "date_time",ylab = "voltage")

plot(household_power_consumption$date_time,household_power_consumption$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering")
lines(household_power_consumption$date_time,household_power_consumption$Sub_metering_2,type = "l",col = "red")
lines(household_power_consumption$date_time,household_power_consumption$Sub_metering_3,type = "l",col = "blue")
legend("topright",legend = c("sub_metering1","sub_metering2","sub_metering3"),col = c("black","red","blue"),lty = 1,lwd = 2,cex = 0.7,bty = "n")

plot(household_power_consumption$date_time,household_power_consumption$Global_reactive_power,type = "l",xlab = "date_time",ylab = "Global_reactive_power"  )
dev.off()