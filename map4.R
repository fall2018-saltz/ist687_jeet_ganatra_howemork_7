
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")

#getting the latitude and longitude of an address
#source attribute hold the source of the geocodes
latlon <- geocode("new york city, ny", source = "dsk")     
latlon

map4 <- ggplot(mergeDataframe,aes(map_id = stateName)) + geom_map(map= us, aes(fill = Murder)) 
map4 <- map4 + expand_limits(x= mergeDf$x,  y= mergeDf$y) + coord_map() 
map4 <- map4 + ggtitle("Zoomed map of US") 
map4 <- map4 + xlim(latlon$lon-10,latlon$lon+10) + ylim(latlon$lat-10, latlon$lat+10)     
mapArea3
