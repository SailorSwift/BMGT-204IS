# Read csv file

smoke_df = read.csv("smokedetectors_r.csv")

# Determine correct variable names using str() command

str(smoke_df)

# Create variable vectors

detect=smoke_df$Homes.With
deaths=smoke_df$Deaths.per.Mil

# Calculate covariance and correlation

cov(detect,deaths)
cor(detect,deaths)
 
# Create scatter plot
 
plot(detect,deaths)


