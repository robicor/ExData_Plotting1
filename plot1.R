## Read data
## remember to source("readdata.R") first!

## plot 1, convert x as numeric otherwise hist will not work
x <- as.numeric(data$Global_active_power)
## hist with few parameters
hist(x, col = "red", main = "Global Active Power", xlab = "Global Active Power (kWatt)", ylab = "Frequency")

## copy to png, close the device
dev.copy(png,file="plot1.png")
dev.off()
