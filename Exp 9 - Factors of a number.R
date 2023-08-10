num <- readline(prompt="Enter a number to find its factors:")
num <- as.numeric(num)
cat("Factors of ",num,":\n")
for(i in 1:num)
{
  if((num %% i)==0)
  {
    print(i)
  }
}