## Plot 1 Project 1 Explorative Data Analysis


# Source data prep file ---------------------------------------------------

source(file = 'R/dataPrep.R')


# Plot 1 ------------------------------------------------------------------

png(file = 'plots/plot1.png',
    width = 480, height = 480)
with(twoDays,
     hist(Global_active_power,
          col = 'red',
          main = 'Global Active Power',
          xlab = 'Global Active Power (kilowatts)'))
dev.off()