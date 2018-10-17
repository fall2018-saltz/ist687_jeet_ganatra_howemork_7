
library("ggplot2")
library("ggmap")
map2 <- ggplot(mergeDataframe, aes(map_id = stateName))
map2 <- map2 + geom_map(map = us, aes(fill=Murder))
map2 <- map2 + expand_limits(x = mergeDataframe$x, y= mergeDataframe$y)
map2 <- map2 + coord_map() + ggtitle("Map of US based on murder rate of states")
map2
