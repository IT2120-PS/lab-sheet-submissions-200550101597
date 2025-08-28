setwd("C:\\Users\\IT24104072\\Desktop\\IT24104072")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

hist(Delivery_Times$Delivery, 
     breaks=9, 
     xlim=c(20, 70), 
     main="Histogram of Delivery Times", 
     xlab="Delivery Time", 
     col="pink", 
     right=TRUE)

delivery_cut <- cut(Delivery_Times$Delivery, breaks=seq(20, 70, by=5), right=TRUE)

freq_table <- table(delivery_cut)
cum_freq <- cumsum(freq_table)

bin_midpoints <- seq(22.5, 67.5, by=5)

plot(bin_midpoints, cum_freq, type="o", 
     col="orange", xlab="Delivery Time", ylab="Cumulative Frequency", 
     main="Cumulative Frequency Polygon (Ogive)")
