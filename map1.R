
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")     

#initializing  a ggplot object and passing mergeDf as the input data with map ID as stateName
map1 <- ggplot(mergeDataframe, aes(map_id = stateName)) 
#creating a map visualization
map1 <- map1 + geom_map(map = us, aes(fill= stateArea))     
#defining the x and y axes values of the map
map1 <- map1 + expand_limits(x = mergeDataframe$x, y= mergeDataframe$y)  
#coord_map() handles the distortion and aspect ratio of the map
#ggtitle() gives a title to the map
map1 <- map1 + coord_map() + ggtitle("Map of US based on state area")     
map1



