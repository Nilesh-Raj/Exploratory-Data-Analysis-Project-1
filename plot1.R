#course- Exploratory Data Analysis
#Project 1
#-------------------------Plot 1--------------------------------------


#--------------------------downloading dataset----------------
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "household_power_consumption.zip", method = 'curl')
#---------------------------unzipping dataset------------------
unzip('house_hold_power_consumption.zip')
#---------------------------reading dataset------------------
household_power_consumption <- read.csv("household_power_consumption.txt",header = T,sep = ";",na.strings = "?",stringsAsFactors = F)
str(household_power_consumption)

household_power_consumption$Date  <- as.Date(household_power_consumption$Date,'%d/%m/%Y') 

str(household_power_consumption)

household_power_consumption <- subset(household_power_consumption, Date >= "2007-02-01" & Date <= "2007-02-02")#filtering dataset based on required dates
#----------------------------plotting graphs----------------
png("plot 1.png",height = 480,width = 480)
hist(household_power_consumption$Global_active_power,main = "Global Active Power",xlab = "Global Active Power(kilowat)",ylab = "Frequency", col = 'red')
dev.off()