## Read data
datafile <- read.table("./household_power_consumption.txt",header=T, sep=";",quote="\"'",stringsAsFactors=F)

##alternatively(NOT TESTED), using data.table
##library(data.table)
##
##datafile <- fread("./household_power_consumption.txt",header=T, sep=";")

## convert Date to a reasonable format
datafile$Date <- as.Date(datafile$Date, format="%d/%m/%Y")

## subset the data
data <- subset(datafile, Date == "2007-02-01" | Date == "2007-02-02")

## rm the big datafile
rm(datafile)

## create new variable datetime, add it as a column

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)
