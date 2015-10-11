library(data.table)
setwd ('E:/FER_posao/Coursera_Iversity/Data Scientist Specialization/4 Exploratory data analysis/Peer assesment 1')
unzip("exdata-data-household_power_consumption.zip")
currwd <- getwd()
dt <- fread("household_power_consumption.txt")
dt$Date <- as.Date(dt$Date,"%d/%m/%Y")
dt_use <- subset(dt,Date >= "2007-07-01" & Date <= "2007-07-02")
png('E:/FER_posao/Coursera_Iversity/Data Scientist Specialization/4 Exploratory data analysis/Peer assesment 1/plot1.png')
hist(as.numeric(dt_use$Global_active_power),col="red",main="Global Active Power", xlab = "Global Active Power (kilowatts)", xlim =c(0,6), ylim=c(0,1200))
dev.off()


