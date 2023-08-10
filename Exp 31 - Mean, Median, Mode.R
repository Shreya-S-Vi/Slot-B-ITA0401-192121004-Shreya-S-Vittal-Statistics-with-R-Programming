data <- c(90,50,70,80,70,60,20,30,80,90,20)

#(i) Mean, Median and Mode
data_mean <- mean(data)
cat("Mean of the given vector:",data_mean,"\n")

data_median <- median(data)
cat("Median of the given vector:",data_median,"\n")

mode <- function()
{
  return(names(sort(-table(data)))[1])
}
data_mode <- mode()
cat("Mode of the given vector:",data_mode,"\n")

#(ii) 2nd highest and 3rd Lowest value
data <- unique(data)
cat("2nd highest value of the given vector:",sort(data)[length(data)-1],"\n")
cat("3rd lowest value of the given vector:", sort(data)[3])
