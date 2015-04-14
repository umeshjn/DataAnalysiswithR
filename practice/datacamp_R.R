# Box office Star Wars: In Millions (!) 
# Construct the matrix: 
box_office_all <- c(461, 314.4,290.5, 247.9,309.3,165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow=3, byrow=TRUE, dimnames=list(movie_names,col_titles)) 
ticket_prices_matrix <- matrix(c(5,5,6,6,7,7), nrow=3, byrow=TRUE, dimnames=list(movie_names,col_titles)) 

# Your code below:
visitors <- star_wars_matrix / ticket_prices_matrix
visitors
# Your code below:
average_us_visitor <- mean(visitors[,1])
average_us_visitor
# Your code below:
average_non_us_visitor <- mean(visitors[,2])
average_non_us_visitor



animals_vector <- c("Elephant", "Giraffe", "Donkey","Horse")
temperature_vector <- c("High","Low","High","Low","Medium")

factor_animals_vector <- factor(animals_vector)
factor_temperature_vector <- factor(temperature_vector, order=TRUE, levels=c("Low","Medium","High") )




survey_vector <- c("M","F","F","M","M")
factor_survey_vector <- factor(survey_vector,order=FALSE,levels=c("M","F"))
factor_survey_vector
# Your code here
levels(factor_survey_vector) <- c("Male","Female")
factor_survey_vector



survey_vector <- c("M","F","F","M","M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female","Male")
factor_survey_vector
# Battle of the sexes: 
# Male
factor_survey_vector[1] 
# Female
factor_survey_vector[2] 
# Male larger than female?
factor_survey_vector[1] > factor_survey_vector[2] 
