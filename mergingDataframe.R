
#copying USArrests into a local variable
arrests <- USArrests

#creating a column name for rows having states using rownames()
rownames(clean_data) <- as.vector(clean_data[,"stateName"])

#merging 2 dataframes with attributes from both dataframes
mergeDataframe <- merge(clean_data, arrests, by = "row.names")
mergeDataframe
