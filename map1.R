
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")     

#initializing  a ggplot object and passing mergeDf as the input data with map ID as stateName
mapArea <- ggplot(mergeDf, aes(map_id = stateName)) 
#creating a map visualization
mapArea <- mapArea + geom_map(map = us, aes(fill= stateArea))     
#defining the x and y axes values of the map
mapArea <- mapArea + expand_limits(x = mergeDf$x, y= mergeDf$y)     
mapArea <- mapArea + coord_map() + ggtitle("Map of US based on state area")     
mapArea



