
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")
#turning data from the maps package into a data frame suitable for plotting with ggplot2
area_map <- map_data("state")
options(scipen=999)
map1 <- ggplot(mergeDataframe, aes(map_id = stateName))
map1 <- map1 + geom_map(map = area_map ,aes(fill= state.area))
map1 <- map1 + expand_limits(x = us$long, y = us$lat) + coord_map()
map1