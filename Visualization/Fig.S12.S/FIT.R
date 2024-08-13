library(ggpubr)
library(patchwork)

getwd()

df1 <- read.csv("knn1results.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df2 <- read.csv("rf1results.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df3 <- read.csv("svm1results.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df4 <- read.csv("xgb1results.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)

t <- ggscatterhist(
  df4, x = "Experimental", y = "Predicted", stroke = 0.8,
  color = "TrainTest", size = 3, 
  palette = c("#084384", "#77cac5"), 
  rug = TRUE, alpha = 0.8,
  margin.plot = "density", alpha = 0.5,
  margin.params = list(fill = "TrainTest", color = "black", size = 0.4),
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

ggsave(filename = "t4.pdf", width = 6, height = 6)
 

