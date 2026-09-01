# Part a - Read in csv file

cell_df = read.csv("cellservice_r.csv")

# Determine variable names

str(cell_df)

# Calculate median values for T-Mobile using summary command

summary(cell_df$T.Mobile)

# Part b - Calculate the five number summary

fivenum(cell_df$T.M)

# Part c - Create line plot for all carriers on same graph
# Format graph

ylim=range(c(63,90))
plot(cell_df$T.Mobile,type="l", col="red",lwd="2",ylim=ylim,ylab="Satisfaction")
lines(cell_df$AT.T,lty="dashed",col="blue",lwd="2")
lines(cell_df$Sprint,lty="dotted", col="green",lwd=2)
lines(cell_df$Verizon,lty="dotdash", col="black",lwd=2)
legend("topleft",c("T-Mobile","AT&T","Sprint","Verizon"),col=c("red","blue","green","black"),lty=1:4)

plot(cell_df$T.Mobile,type="l", col="red")


# Part d - five number summary for all service providers

fivenum(cell_df$AT.T)
fivenum(cell_df$Sprint)
fivenum(cell_df$Verizon)

# Part e - Eliminate the City variable from the data frame

cell_adj_df = subset (cell_df, select = -City)

# Create a boxplot

boxplot(cell_adj_df)