source("project.R")
png(filename = "plot2.png")
with(household,plot(Date,Global_active_power,type="l",xlab="",
                    ylab = "Global Active Power (kilowatts)"))
dev.off()
