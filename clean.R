
clean_data <- function(states){                                   #Creating a new function which cleans the dataframe 'dfStates'
  states <- states[-1,-1:-4]
  lastIndex <- nrow(states)
  states <- states[-lastIndex,]
  colnames(states) <- c("stateName", "population", "popOver18", "percentOver18")
  return(states)
}
states <- clean_data() 
View(states)
