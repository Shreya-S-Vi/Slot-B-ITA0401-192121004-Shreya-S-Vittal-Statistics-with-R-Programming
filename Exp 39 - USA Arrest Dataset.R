# Load the USArrests dataset if not already loaded
data("USArrests")

# (i.a) Explore the summary of the dataset
summary(USArrests)

# (i.b) Print the state which saw the largest total number of rape
max_rape_state <- USArrests$Rape[which.max(USArrests$Rape)]
max_rape_state_name <- row.names(USArrests)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", max_rape_state_name, "(", max_rape_state, ")\n")

# (i.c) Print the states with the max & min crime rates for murder
max_murder_state <- USArrests$Murder[which.max(USArrests$Murder)]
max_murder_state_name <- row.names(USArrests)[which.max(USArrests$Murder)]
cat("State with the highest crime rate for murder:", max_murder_state_name, "(", max_murder_state, ")\n")

min_murder_state <- USArrests$Murder[which.min(USArrests$Murder)]
min_murder_state_name <- row.names(USArrests)[which.min(USArrests$Murder)]
cat("State with the lowest crime rate for murder:", min_murder_state_name, "(", min_murder_state, ")\n")

# (ii.a) Find the correlation among the features
correlation_matrix <- cor(USArrests)
print(correlation_matrix)

# (ii.b) Print the states which have assault arrests more than median of the country
median_assault <- median(USArrests$Assault)
states_above_median_assault <- row.names(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests more than median:", states_above_median_assault, "\n")

# (ii.c) Print the states in the bottom 25% of murder
murder_25_percentile <- quantile(USArrests$Murder, 0.25)
states_bottom_25_percent_murder <- row.names(USArrests)[USArrests$Murder < murder_25_percentile]
cat("States in the bottom 25% of murder:", states_bottom_25_percent_murder, "\n")

# (iii.a) Create a histogram of murder arrests by US state
hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests", col = "blue")

# (iii.b) Create a scatter plot showing the relationship between murder arrest rate and urban population
plot(USArrests$UrbanPop, USArrests$Murder, main = "Relationship between Murder Arrest Rate and Urban Population",
     xlab = "Urban Population (%)", ylab = "Murder Arrests", col = heat.colors(n = length(USArrests$Assault)))
legend("topright", "Assault Arrests", col = heat.colors(n = length(USArrests$Assault)), pch = 1)

# (iii.c) Draw a bar graph to show the murder rate for each of the 50 states
barplot(USArrests$Murder, names.arg = row.names(USArrests), main = "Murder Rate for Each State",
        xlab = "State", ylab = "Murder Rate", col = "blue", las = 2)
