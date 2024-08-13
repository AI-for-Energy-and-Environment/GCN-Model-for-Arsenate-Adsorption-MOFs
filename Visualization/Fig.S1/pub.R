library(ggplot2)
library(readr)
library(RColorBrewer)

data <- read_csv("pub.csv")
x_limits <- c(2014, 2024) 
y_limits <- c(0, 15) 

ggplot(data, aes(x = Year, y = Number, size = amount, fill = amount)) +
  geom_point(shape = 21, alpha = 0.7, stroke = 1, color = "black") +
  #geom_text(aes(label = amount), vjust = 1.5, color = "black", size = 3) +
  scale_size_continuous(range = c(1, 20)) +
  scale_x_continuous(limits = x_limits, breaks = seq(x_limits[1], x_limits[2], by = 2)) +
  scale_y_continuous(limits = y_limits) +
  scale_fill_gradientn(colors = brewer.pal(9, "GnBu"))  +
  labs(x = "Year", y = "Number of publications", size = "Amount")+
  theme(legend.position = "none") +
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


ggsave(filename = "t1.pdf", width = 6, height = 6)

data2 <- read_csv("pub2.csv")

colors <- tail(brewer.pal(9, "GnBu"), 6)


ggplot(data2, aes(x = Publisher, y = Number, fill = Number)) +
  geom_bar(stat = "identity") +
  scale_fill_gradientn(colors = colors) +
  theme_minimal() +
  labs(x = "Publisher", y = "Number") +
  theme(legend.position = "none") +
  theme_bw() + theme(legend.position="left") + 
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

ggsave(filename = "t2.pdf", width = 6, height = 6)
  