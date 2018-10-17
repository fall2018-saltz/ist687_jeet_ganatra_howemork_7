
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")     

mapArea <- ggplot(mergeDf, aes(map_id = stateName))     
mapArea <- mapArea + geom_map(map = us, aes(fill= stateArea))     #creating a map visualization
mapArea <- mapArea + expand_limits(x = mergeDf$x, y= mergeDf$y)     #defining the x and y axes values of the map
mapArea <- mapArea + coord_map() + ggtitle("Map of US based on state area")     #coord_map() handles the distortion and aspect ratio of the map. ggtitle() gives a title to the map
mapArea



