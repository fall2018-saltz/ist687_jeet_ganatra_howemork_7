
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")
us <- map_data("state")     
View(us)
mapArea <- ggplot(mergeDf, aes(map_id = stateName))     #initializing  a ggplot object and passing mergeDf as the input data with map ID as stateName.
mapArea <- mapArea + geom_map(map = us, aes(fill= stateArea))     #creating a map visualization
mapArea <- mapArea + expand_limits(x = mergeDf$x, y= mergeDf$y)     #defining the x and y axes values of the map
mapArea <- mapArea + coord_map() + ggtitle("Map of US based on state area")     #coord_map() handles the distortion and aspect ratio of the map. ggtitle() gives a title to the map
mapArea



