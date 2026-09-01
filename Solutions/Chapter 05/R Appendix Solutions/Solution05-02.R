# Part a-3 calls in a 5-minute interval
# 3 is the number of calls and 4 is the mean (48(5/60))

dpois(3,4)     

# Part b - 10 calls in 15 minutes 10 is the number of calls
# 12 is the mean (48(15/60))

dpois(10,12)

# Part c number of callers waiting after 5 minutes

dpois(0,4)   

#part d 3 minutes with no calls  mean is 2.4 (48(3/60))

dpois(0,2.4)   