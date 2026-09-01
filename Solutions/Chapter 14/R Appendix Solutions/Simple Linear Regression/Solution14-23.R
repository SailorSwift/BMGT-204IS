# Part a - Read file

wine_df = read.csv("wineprices_r.csv")

# Create a scatter plot of price vs. age

plot(wine_df$Age,wine_df$Price,main="Scatter Plot",xlab="Age",
     ylab="Price")

# Part c - Create variable vectors for age and price

age=wine_df$Age
price=wine_df$Price

# Estimate a simple linear regression equation using the lm command

wine_SLR=lm(price~age)

#The summary command applied to the regression output

summary(wine_SLR)