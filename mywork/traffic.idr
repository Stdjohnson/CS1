module TrafficLightColor

data color = red | amber | green

nextColor: color -> color
nextColor red = amber
nextColor amber = green
nextColor green = red
