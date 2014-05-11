## Data preparation


# Loading data ------------------------------------------------------------

## url link to data
fileurl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'

## Downloading data
download.file(fileurl, 
              destfile="household_power_consumption.zip", 
              method="curl")

## Reading data
powerConsumption <- read.table(unz("household_power_consumption.zip", 
                                   "household_power_consumption.txt"), 
                               header=T, 
                               sep=";",
                               na.strings = '?')

powerConsumption <- na.omit(powerConsumption)


# Data conversion ---------------------------------------------------------

powerConsumption$dateTime <- strptime(paste(powerConsumption$Date,
                                            powerConsumption$Time),
                                            format = '%d/%m/%Y %H:%M:%S')
powerConsumption <- transform(powerConsumption, Date = as.Date(Date, '%d/%m/%Y'))


# Extract Dates of interest and write to csv file -------------------------

twoDays <- subset(powerConsumption, Date == '2007-02-01' | Date == '2007-02-02')




## Other solution to the date time conversion
# object$DateTime <- strptime(paste(object$Date, object$Time), format="%d/%m/%Y %H:%M:%S")
# finalData$datetime <- as.POSIXlt(paste(finalData$Date,finalData$Time))