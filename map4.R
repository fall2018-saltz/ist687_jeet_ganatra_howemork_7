
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#getting the latitude and longitude of an address
#source attribute hold the source of the geocodes
latlon <- geocode("new york city, ny", source = "dsk")     
latlon
map4 <- ggplot(mergeDataframe,aes(map_id = stateName)) + geom_map(map= us, aes(fill = Murder)) 
map4 <- map4 + expand_limits(x= x,  y= y) + coord_map() + ggtitle("Zoomed map of US") 
map4 <- map4 + xlim(latlon$lon-10,latlon$lon+10) + ylim(latlon$lat-10, latlon$lat+10)     
mapArea3
