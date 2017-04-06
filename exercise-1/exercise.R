# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
points <- c(17, 11, 27, 23)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
points.against <- c(16, 18, 17, 21)

# Combine your two vectors into a dataframe
seahawks.points <- data.frame(scored = points, allowed = points.against)

# Create a new column "diff" that is the difference in points
seahawks.points$diff <- seahawks.points$scored - seahawks.points$allowed

# Create a new column "won" which is TRUE if the Seahawks wom
seahawks.points$won <- seahawks.points$diff > 0

# Create a vector of the opponents
opponents <- c("Chiefs", "Vikings", "Cowboys", "Raiders")

# Assign your dataframe rownames of their opponents
rownames(seahawks.points) <- opponents

