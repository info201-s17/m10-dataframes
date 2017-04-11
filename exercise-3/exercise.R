# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
my.data <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?


# Why are they so strange?


# What are the row names of your dataframe?


# Create a column `category` that is equal to your rownames
my.data$category <- row.names(my.data)

# How much money was spent on personal care in 1940?
my.data["Personal Care", 'X1940']

# How much money was spent on Food and Tobacco in 1960
my.data$X1960[1]

# What was the highest expenditure category in 1960?
my.data$category[which.max(my.data$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
HighestSpending <- function(year) {
  return (my.data$category[which.max(my.data[, paste0("X", year)])])
}

# Using your function, determine the highest spending category of each year
HighestSpending(1940)

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
