source("project.R")
aux = seq(from = 0,by = 0.5, length.out = 16)
with(household,plot(Date,Global_active_power, 
                     type = "l"))

dev.copy(png,"plot2.png")
rm(aux)