source("project.R")
png(filename = "plot4.png")
par(mfrow = c(2,2))

with(household,plot(Date,Global_active_power,type="l",xlab="",
                    ylab = "Global Active Power (kilowatts)"))

with(household,plot(Date,Voltage,type="l",xlab="datetime",
                    ylab = "Voltage"))

with(household,plot(Date,Sub_metering_1,type="l",xlab="",
                    ylab = "Global Active Power (kilowatts)"))
lines(household$Date,household$Sub_metering_2,col="red")
lines(household$Date,household$Sub_metering_3,col="blue")
aux = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
aux2 = c("black","red","blue")
legend("topright", legend=aux, col=aux2, lty=1, bty="n")

with(household,plot(Date,Global_reactive_power,type="l",
                    xlab="datetime"))

dev.off()
rm(aux,aux2)
