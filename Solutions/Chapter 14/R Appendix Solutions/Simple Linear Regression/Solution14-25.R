# Part a - Read data in csv file

gpa_df = read.csv("gpasalary_r.csv")
 
# Create a vector for each variable in the gps data frame

gpa=gpa_df$GPA
salary=gpa_df$Salary

# Use the plot command to create a scatter plot of gpa versus salary


plot(gpa_df$GPA,gpa_df$Salary,main="Scatter Plot",xlab="GPA",
     ylab="Salary")

# Part b - Estimate a simple linear regression model using the lm command

gpa_SLR=lm(salary~gpa)

#Use the summary command to view the regression results

summary(gpa_SLR)

 