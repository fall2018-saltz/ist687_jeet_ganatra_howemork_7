
clean_data <- function(dfStates){                                   #Creating a new function which cleans the dataframe 'dfStates'
  dfStates <- dfStates[-1,-1:-4]
  lastIndex <- nrow(dfStates)
  dfStates <- dfStates[-lastIndex,]
  colnames(dfStates) <- c("stateName", "population", "popOver18", "percentOver18")
  return(dfStates)
}
states <- newStates() 
View(states)
