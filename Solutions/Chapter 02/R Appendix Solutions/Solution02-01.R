# Read in csv file

network_df = read.csv("networks2012_r.csv")

# Create table of counts and proportions

table(network_df)
prop.table(table(network_df))barplot(table(network_df))
barplot(prop.table(table(network_df)))

# Create barplots

barplot(table(network_df))

barplot(prop.table(table(network_df)))