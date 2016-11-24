# load libraries
pkg <- c("dplyr")
lapply(pkg, require, character.only = T)

# Download Data
download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
              destfile = "data.zip")
unzip("data.zip")

# load data
raw_data <- read.table("household_power_consumption.txt", sep = ";", header = T, na.strings = "?", 
                       colClasses = c("character", "character", rep("numeric",7)))
raw_data$Date <- raw_data$Date %>% as.Date(format = "%d/%m/%Y")

tidy_data <- raw_data %>% filter(Date >= "2007-02-01", Date <= "2007-02-02")
tidy_data$dt <- strptime(paste(tidy_data$Date, tidy_data$Time), "%Y-%m-%d %H:%M:%S")

rm(raw_data)