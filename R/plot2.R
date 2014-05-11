## Plot 2 Project 1 Explorative Data Analysis


# Source data prep file ---------------------------------------------------

## adds the object 'twoDays' to the environment
source(file = 'R/dataPrep.R')


# Plot 2 ------------------------------------------------------------------

png(file = 'plots/plot2.png',
    width = 480, height = 480)
with(twoDays,
     plot(x = dateTime,
          y = Global_active_power,
          type = 'l',
          xlab = NA,
          ylab = 'Global Active Power (kilowatts)'))
dev.off()