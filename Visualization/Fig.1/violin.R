library(ggpubr)

getwd()

df1 <- read.csv("v1.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v1 <- ggviolin(df1, x = "ε", y = "a", fill = "ε",
         palette = c("#42a6cb"),
         add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(K)) + xlab(expression(Εpsilon)) 
v1 
ggsave(filename = '1.pdf', width = 6, height = 5)

df2 <- read.csv("v2.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v2 <- ggviolin(df2, x = "σ", y = "a", fill = "σ",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(A)) + xlab(expression(Sigma.)) 
v2
ggsave(filename = '2.pdf', width = 6, height = 5)

df3 <- read.csv("v3.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v3 <- ggviolin(df3, x = "GLD", y = "a", fill = "GLD",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(A)) + xlab(expression()) 
v3
ggsave(filename = '3.pdf', width = 6, height = 5)

df4 <- read.csv("v4.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v4 <- ggviolin(df4, x = "PLD", y = "a", fill = "PLD",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(A)) + xlab(expression(PLD)) 
v4
ggsave(filename = '4.pdf', width = 6, height = 5)

df5 <- read.csv("v5.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v5 <- ggviolin(df5, x = "LCD", y = "a", fill = "LCD",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(A)) + xlab(expression(LCD)) 
v5
ggsave(filename = '5.pdf', width = 6, height = 5)

df6 <- read.csv("v6.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v6 <- ggviolin(df6, x = "ρ", y = "a", fill = "ρ",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(g/cm3)) + xlab(expression(P)) 
v6
ggsave(filename = '6.pdf', width = 6, height = 5)

df7 <- read.csv("v7.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v7 <- ggviolin(df7, x = "VSA", y = "a", fill = "VSA",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(m2/cm3)) + xlab(expression(VSA)) 
v7
ggsave(filename = '7.pdf', width = 6, height = 5)

df8 <- read.csv("v8.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v8 <- ggviolin(df8, x = "GSA", y = "a", fill = "GSA",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(m2/g)) + xlab(expression(GSA)) 
v8
ggsave(filename = '8.pdf', width = 6, height = 5)

df9 <- read.csv("v9.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v9 <- ggviolin(df9, x = "VF", y = "a", fill = "VF",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression()) + xlab(expression(VF)) 
v9
ggsave(filename = '9.pdf', width = 6, height = 5)

df10 <- read.csv("v10.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v10 <- ggviolin(df10, x = "AV", y = "a", fill = "AV",
               palette = c("#42a6cb"),
               add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(cm3/g)) + xlab(expression(AV)) 
v10
ggsave(filename = '10.pdf', width = 6, height = 5)

df11 <- read.csv("v11.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v11 <- ggviolin(df11, x = "Concentration", y = "a", fill = "Concentration",
                palette = c("#42a6cb"),
                add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylim(c(0, 45)) +
  ylab(expression(mg/L)) + xlab(expression()) 
v11
 ggsave(filename = '11.pdf', width = 6, height = 5)

df12 <- read.csv("v12.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
v12 <- ggviolin(df12, x = "Dosage", y = "a", fill = "Dosage",
                palette = c("#42a6cb"),
                add = "boxplot", add.params = list(fill = "#f4faed")) +
  theme_bw() + 
  theme(axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.x =element_text(size=25), 
        axis.title.y=element_text(size=25),
        legend.title = element_text(size=25), 
        legend.text = element_text(size=15),
        legend.position = "none", #none
        panel.border = element_rect(linetype=1,size=3.5)) +
  ylab(expression(g/L)) + xlab(expression()) 
v12
ggsave(filename = '11.pdf', width = 6, height = 5)
c("#084384", "#1373b2", "#42a6cb", "#77cac5", "#b2e1b9", "#d6efd0", "#f4faed")
