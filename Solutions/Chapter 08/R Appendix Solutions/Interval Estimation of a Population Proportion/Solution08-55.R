# Read in csv file

right_df = read.csv("rightdirection_r.csv")

# Determine samp[le size

samp_size=nrow(right_df)

# Create a subset of observations containing a "Yes" response

yesses=subset(right_df,Direction=="Yes")

# Determine the number of observations with a "Yes" response

yes_count=nrow(yesses)

# Determine the proportion of "Yes" responses

p_bar=yes_count/samp_size
list(p_bar)

# Calculate the margin of error and view result

error=qnorm(0.975,0,1)*sqrt(p_bar*(1-p_bar)/samp_size)

list(error)


# Part c - calculate 95% CI for proportion and view the results using the list command

lower_lim =p_bar -error
upper_lim= p_bar + error
list(lower_lim, upper_lim)

# Part d - Create a subset nof observations containing a "No" response.

nos=subset(right_df, Direction=="No")

# Determine the number of observations with a "No" response. 

no_count=nrow(nos)

# Determine the proportion of "No" responses, calculate the associated error
# and view the result using the list command.

p_no_bar=no_count/samp_size
error=qnorm(0.975,0,1)*sqrt(p_no_bar*(1-p_no_bar)/samp_size)


# Estimate the confidence interval for the proportion of "No' observations.

lower_lim =p_no_bar -error
upper_lim= p_no_bar + error
list(lower_lim, upper_lim)


