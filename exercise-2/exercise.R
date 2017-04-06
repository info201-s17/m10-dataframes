# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
employees <- c(paste("Employee ", 1:100))

# Create a vector of 2014 salaries using the runif function
old.salaries <- runif(100, 10000, 20000)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires (use runif again)
new.salaries <- runif(100, 15000, 25000)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries <- data.frame(old.salaries, new.salaries)
row.names(salaries) <- employees

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries$raise <- new.salaries - old.salaries

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise <- salaries$raise > 0

# Retrieve values from your data frame to answer the following questions:

# What was the 2015 salary of employee 57
salaries$new.salaries[[57]]

# How many employees got a raise?
table(salaries$got.raise)["TRUE"]

# What was the value of the highest raise?
salaries$raise[which.max(salaries$raise)]

# What was the name of the employee who recieved the highest raise?
row.names(salaries)[which.max(salaries$raise)]

# What was the largest decrease in salaries between the two years?
salaries$raise[which.min(salaries$raise)]

# What was the name of the employee who recieved largest decrease in salary?
row.names(salaries)[which.min(salaries$raise)]

# What was the average salary increase?
mean(salaries$raise)

### Bonus ###

# Write a .csv file of your salaries to your working directory
write.csv(salaries, file = "Salary Table.csv", )

# For people who did not get a raise, how much money did they lose?
loss <- !salaries$got.raise
loss.salaries <- salaries$raise[loss]
mean(loss.salaries)

# Is that what you expected them to lose?

### Double Bonus (no answer given) ###

# Repeat the above experiment 100 times, tracking the loss each time.
# Does the average loss equal what you expect?
# What about 10,000 times?
