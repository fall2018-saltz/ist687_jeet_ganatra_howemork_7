
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")
#getting the latitude and longitude of an address
#source attribute hold the source of the geocodes
latlon <- geocode("new york city, ny",source="dsk")
y1 <- latlon$lat-10
x1 <- latlon$lon-10
x2 <- latlon$lon+10
y2 <- latlon$lat+10
#initializing  a ggplot object and passing mergeDataframe as the input data with map ID as stateName
map4 <- ggplot(mergeDataframe, aes(map_id = stateName))
#and creating a map visualization
map4 <- map4 + geom_map(map = us,aes(fill=Murder))
map4 <- map4 + scale_fill_gradient(low = "white", high = "red") + xlim(c(x1,x2)) + ylim(c(y1,y2))        
#defining the x and y axes values of the map and #coord_map() handles the distortion and 
#aspect ratio of the map
map4 <- map4 + expand_limits(x = us$long, y = us$lat) + coord_map()
map4 <- map4 + geom_point(data = mergeDataframe, mapping = aes(x = x, y = y, size=population))
map4
