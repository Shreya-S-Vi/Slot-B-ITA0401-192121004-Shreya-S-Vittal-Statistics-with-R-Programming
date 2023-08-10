a <- 0
b <- 1
print("First 10 Fibonacci numbers\n")
for(i in 1:10)
{
  print(a)
  c=a+b
  a=b
  b=c
}