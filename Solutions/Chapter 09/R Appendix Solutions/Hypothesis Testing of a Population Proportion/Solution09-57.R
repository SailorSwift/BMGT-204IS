
#Read in csv file

eagle_df <- read.csv("eagle_r.csv")

#Calculate the sample size

samp_size=nrow(eagle_df)

#Create a subset of the observations of those using coupons

yes=subset(eagle_df,Used_Coupon=="Yes")
yes_count=nrow(yes)
prop_yes=yes_count/samp_size
list(prop_yes)

#Create the test statistic and view the value

test=prop.test(yes_count,samp_size,p=.1,alternative="greater",
               conf.level=0.95, correct=FALSE)
list(test)