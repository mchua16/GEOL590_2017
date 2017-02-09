library(ggplot2)

diamonds

task5 <- ggplot(diamonds, aes(depth, price, color = cut)) + geom_point()
print(task5)

task5 + labs(title = "Price vs. Depth") +
  theme(
    axis.text = element_text(size = 10),
    legend.key = element_rect(fill = "yellow"),
    legend.background = element_rect(fill = "white"),
    legend.position = c(0.14, 0.80),
    panel.grid.major = element_line(colour = "yellow"),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "yellow")
  )