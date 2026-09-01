#Read in csv file

water_df <- read.csv("residentialWater_r.csv")

#Calculate the sample size 
samp_size=nrow(water_df)

#Create a vector for the rate variable

rate=water_df$Rate

#Calculate the test statistic

test=t.test(rate,alternate="two.sided", mu=21.62,conf.level=.975) 
list(test)

tvalue=qt(.975,41)
list(tvalue)