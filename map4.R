
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")

latlon <- geocode("new york city, ny", source = "dsk")     
latlon
mapArea3 <- ggplot(mergeDf,aes(map_id = stateName)) + geom_map(map= us, aes(fill = Murder)) + expand_limits(x= mergeDf$x,  y= mergeDf$y) + coord_map() + ggtitle("Zoomed map of US") 
mapArea3 <- mapArea3 + xlim(latlon$lon-10,latlon$lon+10) + ylim(latlon$lat-10, latlon$lat+10)     #Observations not in range will be dropped completely
mapArea3
