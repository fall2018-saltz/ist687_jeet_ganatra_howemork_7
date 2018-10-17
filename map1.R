
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")
area_map <- map_data("state")
options(scipen=999)
map1 <- ggplot(mergeDataframe, aes(map_id = stateName))
map1 <- map1 + geom_map(map = area_map ,aes(fill= state.area))
map1 <- map1 + expand_limits(x = us$long, y = us$lat) + coord_map()
map1
