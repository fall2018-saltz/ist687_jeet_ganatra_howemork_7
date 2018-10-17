
#copying USArrests into a local variable
arrests <- USArrests

#creating a column name for rows having states using rownames()
rownames(clean_data) <- as.vector(clean_data[,"stateName"])

#merging 2 dataframes with attributes from both dataframes
mergeDataframe <- merge(clean_data, arrests, by = "row.names")
mergeDataframe

stateName <- state.name     #getting all state names
stateArea<-state.area      #getting all state areas
stateCenter <- state.center     #getting coordinates of the centers of all states

otherDf <- data.frame(stateName, stateArea, stateCenter)     #merging above three datasets to form a dataframe


mergeDataframe <- merge(mergeDataframe, otherDf, by = "stateName")     #merging columns of arrests and states dataset with reference to stateName and pasting into a new dataset


mergeDataframef$stateName <- tolower(mergeDataframef$stateName)     #converting all state names to lower case because R cannot process capital letters
mergeDataframe
