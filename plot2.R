# plot 2
plot2 <- function(){
        plot(tidy_data$dt, tidy_data$Global_active_power, type = "l", 
             xlab = "",
             ylab = "Global Active Power (kilowatts)")
        dev.copy(device = png, file = "plot2.png")
        dev.off()
}