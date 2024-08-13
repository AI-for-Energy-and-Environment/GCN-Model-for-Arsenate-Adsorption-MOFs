library(ggplot2)
library(RColorBrewer)

data <- read.csv("Absorb0.csv")

gnbu_colors <- brewer.pal(9, "GnBu")[4:9]

ggplot(data, aes(x = Concentration)) +
  geom_histogram(binwidth = 15, aes(fill = ..count..), color = "black") +
  scale_fill_gradientn(colors = gnbu_colors) +
  labs(
       x = "Concentration",
       y = "Frequency") +
  theme_bw() + 
  theme(
    legend.position = "none",
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    legend.title = element_text(size = 25),
    legend.text = element_text(size = 15),
    panel.border = element_rect(linetype=1,size=2)
  )

ggsave(filename = "f1.pdf", width = 8, height = 6)
