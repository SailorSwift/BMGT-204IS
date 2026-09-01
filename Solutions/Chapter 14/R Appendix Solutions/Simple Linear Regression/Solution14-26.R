 # Part a -Read data in csv file

travel_df = read.csv("businesstravel.csv")
 
# Create a vector for each variable

rate=travel_df$Room.Rate
entertainment=travel_df$Entertainment

# Estimate a simple linear regression model using the lm command

travel_SLR=lm(entertainment~rate)

# View the regression results using the summary command

summary(travel_SLR)

# Create a vector with a new value for rate, the x variable in
# the regression equation

newdata=data.frame(rate=89)

# Use the predict command to estimate a confidence interval 

predict(travel_SLR,newdata,interval="confidence", level=0.95)

# Part c - Create a vector with the new data for the prediction interval

newdata2=data.frame(rate=128)

# Use the predict command to generate the 95% prediction interval
# for an individual value of y given the value of x in the newdata2 
# vector

predict(travel_SLR,newdata2,interval="confidence", level=0.95)
