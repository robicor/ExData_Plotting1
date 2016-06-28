## Read data
## remember to source("readdata.R") first!

with(data,plot(Sub_metering_1 ~ Datetime, type="l", ylab = "Energy sub metering ", xlab = ""))
with(data,lines(Sub_metering_2 ~ Datetime, col="red"))
with(data,lines(Sub_metering_3 ~ Datetime, col="blue"))

### legends
legend("topright", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=3)

## copy to png, close the device
dev.copy(png,file="plot3.png")
dev.off()
