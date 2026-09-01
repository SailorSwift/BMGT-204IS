# Part a - Read in csv file

job_df = read.csv("jobsearch_r.csv")

# Determine the point estimate of the population mean using the mean command.

avg_time=mean(job_df$Weeks)

# View the value for the mean using the list command

list(avg_time)

# Part b

samp_size=nrow(job_df)

t_value=qt(0.975, samp_size-1,lower.tail=TRUE)

stdev=sd(job_df$Weeks)
 
# Estimate error and view using the list command

error=qt(0.975, samp_size-1,lower.tail=TRUE)*stdev/sqrt(samp_size)
list(error)

# Part c

lower_lim=avg_time-error
upper_lim=avg_time+error
list(lower_lim, upper_lim)

#Install the moments package to have access to the skewness command

install.packages("moments")
library(moments)
skewness(job_df$Weeks)