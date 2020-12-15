source("project.R")
png(filename = "plot1.png")
aux = seq(from = 0,by = 0.5, length.out = 16)
hist(household$Global_active_power,
     breaks = aux, col = "orangered",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
rm(aux)
