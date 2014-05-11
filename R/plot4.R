## Plot 4 Project 1 Explorative Data Analysis


# Source data prep file ---------------------------------------------------

## adds the object 'twoDays' to the environment
source(file = 'R/dataPrep.R')


# Plot 4 ------------------------------------------------------------------

png(file = 'plots/plot4.png',
    width = 480, height = 480)
par(mfcol = c(2, 2))

with(twoDays,
     plot(x = dateTime,
          y = Global_active_power,
          type = 'l',
          xlab = NA,
          ylab = 'Global Active Power (kilowatts)'))

with(twoDays, {
  plot(x = dateTime,
       y = Sub_metering_1,
       type = 'l',
       col = 'black',
       xlab = NA,
       ylab = 'Energy sub metering')
  lines(x = dateTime,
        y = Sub_metering_2,
        col = 'red')
  lines(x = dateTime,
        y = Sub_metering_3,
        col = 'blue')
  legend(x = 'topright',
         legend = c('Sub_metering_1',
                    'Sub_metering_2',
                    'Sub_metering_3'),
         col = c('black', 'red', 'blue'),
         lty = 1)
})

with(twoDays,
     plot(x = dateTime,
          y = Voltage,
          type = 'l'))

with(twoDays,
     plot(x = dateTime,
          y = Global_reactive_power,
          type = 'l'))
dev.off()