
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")
#initializing  a ggplot object and passing mergeDf as the input data with map ID as stateName
map3 <- ggplot(mergeDataframe, aes(map_id = stateName))
map3 <- map3 + geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "white", high = "red")             
map3 <- map3 + expand_limits(x = us$long, y = us$lat) + coord_map()
map3 <- map3 + geom_point(data = mergeDataframe, mapping = aes(x = x, y = y, size=population))
map3
