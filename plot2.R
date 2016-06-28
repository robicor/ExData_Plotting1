## Read data
## remember to source("readdata.R") first!

with(data,plot(Global_active_power ~ Datetime, type="l",ylab="Global Active Power (kWatt)", xlab=""))

## copy to png, close the device
dev.copy(png,file="plot2.png")
dev.off()
