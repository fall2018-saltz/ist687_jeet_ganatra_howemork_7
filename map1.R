
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")
#turning data from the maps package into a data frame suitable for plotting with ggplot2
area_map <- map_data("state")
options(scipen=999)
#using ggplot() to create a map and geom_map() to assign characteristics for the map and
#expand_limits() to ensure limits include a single value for all plots
map1 <- ggplot(mergeDataframe, aes(map_id = stateName))
map1 <- map1 + geom_map(map = area_map ,aes(fill= state.area))
map1 <- map1 + expand_limits(x = area_map$long, y = area_map$lat) + coord_map()
map1
