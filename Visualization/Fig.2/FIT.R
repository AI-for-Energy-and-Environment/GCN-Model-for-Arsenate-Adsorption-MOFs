library(ggplot2)
library(ggExtra)

getwd()

#Data
df <- read.csv("pre.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)

#Fig
p <-ggplot(df, aes(x = Experiment.value, y = Prediction.value, fill = set)) +  # 
  geom_point(shape = 21, size = 8, alpha = 0.7, stroke = 1, color = "black") +  
  geom_abline(slope = 1, intercept = 0, size =1.5, linetype = "dashed", color = "black") +
  scale_y_continuous(limits = c(0, 80)) +
  scale_x_continuous(limits = c(0, 80)) +
  #geom_smooth(method = 'lm', formula = y ~ x, linetype = 1, size = 1, se = FALSE, fill = set) +  
  theme_bw() + 
  theme(legend.position="up") +
  theme(
    axis.text.x = element_text(size = 25),
    axis.text.y = element_text(size = 25),
    axis.title.x = element_text(size = 25),
    axis.title.y = element_text(size = 25),
    legend.title = element_text(size = 30),
    legend.text = element_text(size = 20),
    panel.border = element_rect(linetype=1,size=2.5)
  ) + 
  labs(x = "Experimental.value (mg g-1)", 
       y = "Predictive.value (mg g-1)",
       fill = "MOF name") + 
  scale_fill_manual(values = c("#084384", "#42a6cb", "#77cac5", "#b2e1b9"))

p

ggsave(filename = 'pre.pdf', width = 8, height = 5)

library(plotly)


elu <- function(x, alpha = 1) {
  ifelse(x > 0, x, alpha * (exp(x) - 1))
}


x <- seq(-3, 3, length.out = 100)
y <- seq(-3, 3, length.out = 100)
z <- outer(x, y, Vectorize(function(x, y) elu(x)))


plot_ly(x = ~x, y = ~y, z = ~z, type = "surface") %>%
  layout(title = "3D Surface plot of ELU Activation Function",
         scene = list(xaxis = list(title = "X-axis"),
                      yaxis = list(title = "Y-axis"),
                      zaxis = list(title = "ELU(x)")))

elu <- function(x, alpha = 1) {
  ifelse(x > 0, x, alpha * (exp(x) - 1))
}


x_values <- seq(-3, 3, by = 0.1)
y_values <- sapply(x_values, elu)


data <- data.frame(x = x_values, y = y_values)


ggplot(data, aes(x, y)) +
  geom_line(color = "#084384", size = 4) + 
  theme_minimal() +
  labs(x = "x", y = "ELU(x)") +theme_bw()  +
  theme(
    axis.text.x = element_text(size = 40),
    axis.text.y = element_text(size = 40),
    axis.title.x = element_text(size = 50),
    axis.title.y = element_text(size = 50),
    panel.border = element_rect(linetype=1,size=2.5)
  )
