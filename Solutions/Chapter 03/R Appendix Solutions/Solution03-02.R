# Read in csv file

flights_df = read.csv("flights_r.csv")

# Create data summary for csv file

summary(flights_df)

# Calculate rang, standard deviation and variance for cities

range(flights_df$Atlanta)
sd(flights_df$Atlanta)
var(flights_df$Atlanta)

range(flights_df$Salt_Lake_City)
sd(flights_df$Salt_Lake_City)
var(flights_df$Salt_Lake_City)
