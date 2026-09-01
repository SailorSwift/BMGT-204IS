# Part a - Read file

bicycle_df <- read.csv("racingbicycles.csv")

# Create vectors for weight and price

weight=bicycle_df$Weight
price=bicycle_df$Price

# Estimate a simple linear regvression equation using the lm command

bicycle_SLR=lm(price~weight)

# Use the summary command to view the regression output

summary(bicycle_SLR)

# Part c - Create a vector with new data 

newdata=data.frame(weight=15)

# Use the estimated linear regression model to forecast price given the
# weight value in the new data vector.

predict(bicycle_SLR,newdata,interval="confidence", level=0.95)
