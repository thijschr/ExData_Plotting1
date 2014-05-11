## Plot 3 Project 1 Explorative Data Analysis


# Source data prep file ---------------------------------------------------

## adds the object 'twoDays' to the environment
source(file = 'R/dataPrep.R')


# Plot 3 ------------------------------------------------------------------

png(file = 'plots/plot3.png',
    width = 480, height = 480)
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
dev.off()