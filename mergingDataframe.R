
#copying USArrests into a local variable
arrests <- USArrests

#creating a column name for rows having states using rownames()
rownames(clean_data) <- as.vector(clean_data[,"stateName"])

#merging 2 dataframes with attributes from both dataframes
mergeDataframe <- merge(clean_data, arrests, by = "row.names")
mergeDataframe

#getting all state names and state areas
stateName <- state.name     
stateArea<-state.area      
#getting coordinates of the centers of all states
stateCenter <- state.center     

#merging above three datasets to form a dataframe
otherDf <- data.frame(stateName, stateArea, stateCenter)     

#merging columns of arrests and states dataset with reference to stateName and merging 
#into a new dataset
mergeDataframe <- merge(mergeDataframe, otherDf, by = "stateName")     

#converting all state names to lower case because R cannot process capital letters
mergeDataframe$stateName <- tolower(mergeDataframe$stateName)     
mergeDataframe
