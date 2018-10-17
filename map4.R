
#importing library for ggplot2 and ggmap
library("ggplot2")
library("ggmap")

#turning data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state") 

#getting the latitude and longitude of an address
#source attribute hold the source of the geocodes
latlon <- geocode("new york city, ny", source = "dsk")     
latlon
#initializing  a ggplot object and passing mergeDf as the input data with map ID as stateName
#and creating a map visualization
map4 <- ggplot(mergeDataframe,aes(map_id = stateName)) + geom_map(map= us, aes(fill = Murder)) 
#defining the x and y axes values of the map and coord_map() handles the distortion and 
#aspect ratio of the map
#ggtitle() gives a title to the map
map4 <- map4 + expand_limits(x= x,  y= y) + coord_map() + ggtitle("Zoomed map of US") 
#Observations not in range will be dropped completely
map4 <- map4 + xlim(latlon$lon-10,latlon$lon+10) + ylim(latlon$lat-10, latlon$lat+10)     
map4
