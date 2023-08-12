# Load the ChickWeight dataset if not already loaded
data("ChickWeight")

# (a) Create Box plot for "weight" grouped by "Diet"
boxplot(weight ~ Diet, data = ChickWeight, main = "Box Plot of Weight Grouped by Diet", xlab = "Diet", ylab = "Weight")

# (b) Create a Histogram for "weight" features belonging to Diet-1 category
hist(ChickWeight$weight[ChickWeight$Diet == 1], breaks = 15, col = "blue", main = "Histogram of Weight (Diet-1)", xlab = "Weight", ylab = "Frequency")

# (c) Create Scatter plot for "weight" vs "Time" grouped by Diet
plot(ChickWeight$Time, ChickWeight$weight, col = ChickWeight$Diet, pch = 19, main = "Scatter Plot of Weight vs Time Grouped by Diet", xlab = "Time", ylab = "Weight")
legend("topright", legend = levels(factor(ChickWeight$Diet)), col = 1:4, pch = 19)
