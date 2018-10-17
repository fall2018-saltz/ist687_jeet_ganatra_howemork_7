
library("ggplot2")
library("ggmap")
clean_data2 <- USArrests


# save row names as a separate variable
stateName <- as.vector(rownames(USArrests))
stateName <- tolower(stateName)
# add this column to the dataframe as a column names stateName
clean_data2 <- cbind(clean_data2,stateName, stringsAsFactors=FALSE)

# merge the dataframes based on the stateName column in both the dataframes
# the merge function combines dataframes based on common columns
# here it merges the dataframes by the common column stateName

mergeDataframe <- merge(clean_data,clean_data2,by="stateName")


statecenterx <- state.center$x
statecentery <- state.center$y
mergeDataframe <- cbind(mergeDataframe,state.area)
mergeDataframe <- cbind(mergeDataframe,statecenterx)
mergeDataframe <- cbind(mergeDataframe,statecentery)

str(mergeDataframe)
