library(ggplot2)

mtcars

ugly4 <- ggplot(mtcars,aes(disp,qsec,color=carb)) + geom_point(color="lawngreen",size=6) + geom_smooth(span=10,color="purple",size=5) + geom_polygon(color="yellow",fill="chocolate",size=2)
print(ugly4) #final version of my ugly plot #plot is colored by carb. 

ugly4point <- ggplot(mtcars,aes(disp,qsec,color=carb)) + geom_point(color="lawngreen",size=6)
print(ugly4point) #point plot of ugly 4

ugly4smooth <- ggplot(mtcars,aes(disp,qsec,color=carb)) + geom_smooth(span=10,color="purple",size=5)
print(ugly4smooth) #smooth plot of ugly4

ugly4polygon <- ggplot(mtcars,aes(disp,qsec,color=carb)) + geom_polygon(color="yellow",fill="chocolate",size=2)
print(ugly4polygon) #polygon plot of ugly4

#geom_point is used to create scatterplots
#geom_smooth aids the eye in seeing patterns; shading is standard error.
#geom_polygon draws lines between points and closes them up.