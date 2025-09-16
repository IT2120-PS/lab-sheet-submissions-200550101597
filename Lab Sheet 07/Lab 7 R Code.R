setwd("C:\\Users\\PABODA DIWYANJALEE\\Desktop\\IT24104072")

#Question 1
# Calculate the probability that the train arrives between 8:10 a.m. and 8:25 a.m.
# X is the number of minutes after 8:00 a.m., uniformly distributed between 0 and 40 minutes
prob <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)

# Print the result
cat("The probability that the train arrives between 8:10 a.m. and 8:25 a.m. is:", prob, "\n")

#Question 2
# Calculate the probability that a software update takes at most 2 hours
# T is exponentially distributed with rate lambda = 1/3
lambda <- 1/3
t <- 2
prob <- pexp(t, rate = lambda)

# Print the result
cat("The probability that a software update takes at most 2 hours is:", prob, "\n")

#Question 3)i)
# Calculate the probability that a randomly selected person has an IQ above 130
mean_iq <- 100
sd_iq <- 15
iq_threshold <- 130
prob <- 1 - pnorm(iq_threshold, mean = mean_iq, sd = sd_iq)

# Print the result
cat("The probability that a randomly selected person has an IQ above 130 is:", prob, "\n")

#Question 3)ii)
# Calculate the IQ score for the 95th percentile
mean_iq <- 100
sd_iq <- 15
percentile <- 0.95
iq_score <- qnorm(percentile, mean = mean_iq, sd = sd_iq)

# Print the result
cat("The IQ score representing the 95th percentile is:", round(iq_score), "\n")