# plot 4

plot4 <- function(){
        par(mfrow = c(2,2))
        
        # 1
        plot(tidy_data$dt, tidy_data$Global_active_power, type = "l", 
             xlab = "",
             ylab = "Global Active Power (kilowatts)")
        
        # 2
        with(tidy_data, plot(dt, Voltage, type = "l", xlab = "datetime"))
        
        # 3
        plot(tidy_data$dt, tidy_data$Sub_metering_1, type = "l", 
             xlab = "",
             ylab = "Global Active Power (kilowatts)")
        lines(tidy_data$dt, tidy_data$Sub_metering_2, type = "l", col = "red")
        lines(tidy_data$dt, tidy_data$Sub_metering_3, type = "l", col = "blue")
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, bty = "n", cex = 0.75)
        
        #4
        with(tidy_data, plot(dt, Global_reactive_power, type = "l", xlab = "datetime"))
        
        dev.copy(device = png, file = "plot4.png")
        dev.off()
}