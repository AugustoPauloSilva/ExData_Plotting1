source("project.R")
aux = seq(from = 0,by = 0.5, length.out = 16)
hist(household$Global_active_power,
     breaks = aux, col = "orangered",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.copy(png,"plot1.png")
dev.off()
rm(aux)
