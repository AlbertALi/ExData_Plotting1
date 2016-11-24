# plot 3
plot3 <- function(){
        plot(tidy_data$dt, tidy_data$Sub_metering_1, type = "l", 
             xlab = "",
             ylab = "Global Active Power (kilowatts)")
        lines(tidy_data$dt, tidy_data$Sub_metering_2, type = "l", col = "red")
        lines(tidy_data$dt, tidy_data$Sub_metering_3, type = "l", col = "blue")
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
        dev.copy(device = png, file = "plot3.png")
        dev.off()
}