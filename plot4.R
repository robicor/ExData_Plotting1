## Read data
## remember to source("readdata.R") first!

par(mfcol=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))

with(data,plot(Global_active_power ~ Datetime, type="l",ylab="Global Active Power (kWatt)", xlab=""))

with(data,plot(Sub_metering_1 ~ Datetime, type="l", ylab = "Energy sub metering ", xlab = ""))
with(data,lines(Sub_metering_2 ~ Datetime, col="red"))
with(data,lines(Sub_metering_3 ~ Datetime, col="blue"))

### legends
legend("topright", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=3)

with(data,plot(Voltage ~ Datetime,type="l",ylab="Voltage"))

with(data,plot(Global_reactive_power ~ Datetime,type="l"))

## copy to png, close the device
dev.copy(png,file="plot4.png")
dev.off()
