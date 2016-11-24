# plot 1

plot1 <- function(){
        hist(tidy_data$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
        dev.copy(device = png, file = "plot1.png")
        dev.off()
}