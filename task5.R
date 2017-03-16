library(ggplot2)

diamonds

task5 <- ggplot(diamonds, aes(depth, price, color = cut)) + geom_point() #makes a scatter plot of depth vs price and colors by cut
print(task5)

task5 + labs(title = "Price vs. Depth") #adds the title to "Price vs. Depth"; in hindsight, I realized this is too simple.