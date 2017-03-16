library(ggplot2)
p <- ggplot(mtcars,aes(x=disp,y=mpg,colour=cyl)) +
  geom_point()
print(p) #notes from lecture

p_point <- ggplot(mtcars,aes(x=disp,y=mpg,colour=cyl)) +
  geom_line()
print(p_point) #notes from lecture

m2 <- mtcars
m2$cyl <- as.factor(mtcars$cyl) #notes from lecture

p_faceted <- ggplot(m2, aes(x=disp, y=mpg, colour=cyl)) + 
  geom_point()+ 
  facet_wrap(~cyl)
print(p_faceted) #notes from lecture


p_faceted <- ggplot(mtcars,aes(x=disp,y=mpg,colour=cyl)) +
  geom_point() +
  facet_wrap(~cyl)
print(p_faceted) #notes from lecture

p_smoothed<-p_faceted+geom_smooth(method="lm")
print(p_smoothed)
p_box<-ggplot(mtcars,aes(x=as.factor(cyl),y=mpg))+geom_boxplot()
print(p_box)
p_box+geom_point(position=position_jitter(width=0.2),colour="red",size=3) #notes from lecture #not complete because slide was changed

nrow(diamonds) #determine how many rows the diamonds data set that comes loaded with ggplot2 has
set.seed(1410)
dsmall <- diamonds[sample(nrow(diamonds), 100), ] #need to explain each line of the code in words.
cut<-ggplot(dsmall,aes(x=x,y=y,color=z))+scale_x_continuous(limits = c(4, 8))+scale_y_continuous(limits = c(4, 8))+geom_point()+facet_wrap(~cut)
print(cut) #oops; right below is the correct code.

#a scatterplot of y vs x, colored by z values and faceted by cut 
cut<-ggplot(dsmall,aes(x,y,color=z))+geom_point()+facet_wrap(~cut)
print(cut)

#a scatterplot of price vs carat, colored by cut and smoothed (using the "lm" method, without standard error bars)
smooth<-ggplot(dsmall,aes(carat,price,color=cut))+scale_y_continuous(limits = c(0, 15000))+geom_point()+geom_smooth(se=FALSE,method="lm")
print(smooth) #how do I get rid of the shading?

#a density plot of carat, faceted and colored by clarity 
density<-ggplot(dsmall,aes(carat,color=clarity))+geom_density()+facet_wrap(~clarity)
print(density)

#a boxplot of price as a function of cut 
box<-ggplot(dsmall,aes(x=cut,y=price))+geom_boxplot()
print(box)

#a scatterplot of y versus x. The points should be red (colour = "red"), the color of the smoothing line should be blue (colour = "blue"), and the line should be dashed with fat dashes (linetype=2). The x and y labels should be set manually as well.
RandB<-ggplot(dsmall,aes(x,y))+scale_x_continuous(limits = c(4, 8))+scale_y_continuous(limits = c(4, 8))+geom_point(color="red")+geom_smooth(linetype=2,color="blue")+labs(x="x, in mm",y="y, in mm")
print(RandB)