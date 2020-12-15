library(lubridate)
library(dplyr)
if(!file.exists("household_power_consumption.txt")){
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household.zip")
        unzip("household.zip")
        file.remove("household.zip")
}
household = read.csv("household_power_consumption.txt",
                       sep=";",nrows=1)
tam = dmy_hms(paste(household[1,1],household[1,2]))
tam = object.size(tam) + 
        object.size(household[1,3])*7
tam = tam*2075259
tam = tam/1024
tam = tam/1024
tam = tam/1024

household = read.csv("household_power_consumption.txt",
                     sep=";",skip = 66636,nrows = 2880)
housenames = read.table("household_power_consumption.txt",
                     sep=";",nrows=1)
housenames = sapply(housenames,as.character)
colnames(household) = housenames
date_time = paste(household[,1],household[,2])
date_time = strptime(date_time,format = "%d/%m/%Y %H:%M:%S")
household = mutate(household,Date=date_time)
household = select(household,-Time)
rm(date_time,housenames)
