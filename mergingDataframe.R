
#copying USArrests into a local variable
arrests <- USArrests

#creating a column name for rows having states using rownames()
rownames(clean_data) <- as.vector(clean_data[,"stateName"])

#merging 2 dataframes with attributes from both dataframes
mergeDataframe <- merge(clean_data, arrests, by = "row.names")
mergeDataframe

#Adding the area of each state, and the center of each state, to the merged dataframe, 
#using the ‘state.center’, ‘state.center’ and ‘state.name’ vectors
statecenterx <- state.center$x
statecentery <- state.center$y
#the cbind() adds the new columns to the existing dataset
mergeDataframe <- cbind(mergeDataframe,state.area)
mergeDataframe <- cbind(mergeDataframe,statecenterx)
mergeDataframe <- cbind(mergeDataframe,statecentery)

str(mergeDataframe)
