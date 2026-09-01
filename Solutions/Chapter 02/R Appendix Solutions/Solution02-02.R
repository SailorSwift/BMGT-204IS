# Read in csv file

snow_df=read.csv("snow_r.csv")

# Create scatter plot  

plot(snow_df$Temp,snow_df$Snowfall,main="Scatter Plot",xlab="Snowfall",
     ylab="Temp",xlim=c(40,70),ylim=c(0,100))
