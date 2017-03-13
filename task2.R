2+2 #adds 2+2
q() #quits Rstudio

my.variable <- 2+2 #assigns the sums of 2 and 2 to my.variable
my.variable/3 #divides the number assigned to my.variable by 3

x <- seq(from=1, to=20, length.out=10)
y <- rnorm(10)
labels <- letters[10] 

d <- data.frame(x, y, labels)

png("test_plot.png", height=3, width=4, units="inches", res=300)
plot(x, y)
dev.off()

write.csv("test_data.csv")