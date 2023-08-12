# Create the data frame based on the given table
data <- data.frame(
  Month = 1:12,
  Spends = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)

# (a) Print the data frame
print(data)

# (b) Create a regression model
reg_model <- lm(Sales ~ Spends, data = data)
summary(reg_model)  # Print the summary of the regression model

# (c) Predict the Sales if Spend=13500
new_data <- data.frame(Spends = 13500)
predicted_sales <- predict(reg_model, newdata = new_data)
cat("Predicted Sales when Spends is 13500:", predicted_sales, "\n")
