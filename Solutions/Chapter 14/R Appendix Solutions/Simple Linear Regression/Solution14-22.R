# Part a - Read file

passing_df = read.csv("nflpassing_r.csv")
 
# Use plot command to produce a scatter plot

plot(passing_df$Yds,passing_df$Win,main="Scatter Plot",xlab="Yards",
     ylab="Wins%",xlim=c(4,9),ylim=c(0,90))

# Part c - Create vectors for the win and yds variables

Win=passing_df$Win
Yds=passing_df$Yds

# Estimate a simple linear regression for wins as a function of yds

passing_SLR=lm(Win~Yds)

# The summary command lists the results of the regression

summary(passing_SLR)

# Part e - Create a vector of new data.  

newdata=data.frame(Yds=6.2)

# Use the regression equation to forecast the value for the new data.

predict(passing_SLR,newdata,interval="confidence", level=0.95)
