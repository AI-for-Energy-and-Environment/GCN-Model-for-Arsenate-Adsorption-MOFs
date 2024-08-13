library(ggpubr)
library(patchwork)

getwd()

#Fig. 3
df1 <- read.csv("pldvsa.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df2 <- read.csv("lcdgsa.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df3 <- read.csv("gld.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df4 <- read.csv("avvf.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)

t <- ggscatterhist(
  df4, x = "exp", y = "pre", stroke = 0.8,
  color = "set", size = 3, 
  palette = c("#084384", "#77cac5"), 
  rug = TRUE, alpha = 0.8,
  margin.plot = "density", alpha = 0.5,
  margin.params = list(fill = "set", color = "black", size = 0.4),
  xlim = c(-10, 500), ylim = c(-10, 500),
  xlab = "Experimental.value (mg g-1)", 
  ylab = "Predictive.value (mg g-1)",
  legend = "top",
  ggtheme = theme_bw() + 
    theme(
      axis.text.x=element_text(size=20),
      axis.text.y=element_text(size=20),
      axis.title.x = element_text(size = 20), 
      axis.title.y = element_text(size = 20),
      legend.title = element_text(size=25),
      legend.text = element_text(size=15),
      panel.border = element_rect(linetype=1,size=2)))

t

ggsave(filename = "t4.pdf", width = 6, height = 5)


library(ggplot2)
library(ggExtra)


p <- ggplot(df1, aes(x = exp, y = pre, fill = set)) +  # 修改这里将color改为fill
  geom_point(shape = 21, size = 6, alpha = 0.7, stroke = 1, color = "black") +  # 增加了color参数
  geom_abline(slope = 1, intercept = 0, size =1.5, linetype = "dashed", color = "black") +
  scale_y_continuous(limits = c(-10, 600)) +
  scale_x_continuous(limits = c(-10, 600)) +
  theme_bw() + 
  theme(legend.position="left") +
  theme(
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    legend.title = element_text(size = 25),
    legend.text = element_text(size = 15),
    panel.border = element_rect(linetype=1,size=2)
  ) + 
  labs(fill = "MOF name") + 
  scale_fill_manual(values = c("#084384", "#77cac5"))

p


p_marginal <- ggMarginal(p, type = "density", bins = 30, groupColour = TRUE, groupFill = TRUE)

p_marginal

hist_x <- ggplot(df1, aes(x = exp, fill = set)) + 
  geom_histogram(bins = 30) + 
  scale_fill_manual(values = c("#084384", "#77cac5"))

hist_y <- ggplot(df1, aes(x = pre, fill = set)) + 
  geom_histogram(bins = 30) + 
  scale_fill_manual(values = c("#084384", "#77cac5"))

# 使用 gridExtra 组合图形
ggMarginal(p, hist_x, hist_y, ncol = 2, nrow = 2)




ggsave(filename = "t1.pdf", width = 8, height = 5)
