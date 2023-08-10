exam_data = data.frame(name = c("Anastasia","Dima","Katherine","James","Emily",
                                "Michael","Matthew","Laura","Kevin","Jonas"),
                       score = c(12.5,9,16.5,12,9,20,14.5,13.5,8,19),
                       attempts = c(1,3,2,3,2,3,1,1,2,1),
                       qualify = c('yes','no','yes','no','no','yes','yes',
                                   'no','no','yes'))
print("Original dataframe:")
print(exam_data)

#25 (a)
print("Extract 3rd and 5th rows with 1st and 3rd columns:")
result = exam_data[c(3,5),c(1,3)]
print(result)

#25 (b)
print("New data frame after adding the 'Country' column:")
exam_data$Country <- c("USA","USA","USA","USA","UK","USA","USA","India",
                       "USA","USA")
print(exam_data)

#25 (c)
exam_data = subset(exam_data,select = -c(Country))
new_exam_data <- data.frame(name = c("Robert","Sophia"),
                            score = c(10.5,9),
                            attempts = c(1,3),
                            qualify = c('yes','no'))
exam_data <- rbind(exam_data,new_exam_data)
print("After adding new row(s) to an existing data frame:")
print(exam_data)

#25 (d)
print("Dataframe after sorting 'name' and 'score' columns:")
exam_data = exam_data[with(exam_data,order(name,score)),]
print(exam_data)

#25 (e)
save(exam_data,file="C:/Users/vitta/Desktop/R Programs/Practicals/data.rda")
load("C:/Users/vitta/Desktop/R Programs/Practicals/data.rda")
file.info("C:/Users/vitta/Desktop/R Programs/Practicals/data.rda")
