library(ggplot2)
library(ggExtra)
library(dplyr)


getwd()

#
df1 <- read.csv("dis.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)


p <- ggplot(df1, aes(x = AV, y = VSA, fill = Capacity, size = Capacity)) +
  geom_point(shape = 21, alpha = 0.7, stroke = 0) +
  scale_fill_gradientn(
    colors = c("#084384", "#1373b2", "#42a6cb", "#77cac5", "#b2e1b9", "#d6efd0", "#f4faed"),
    values = scales::rescale(c(1, 0)) # 
  ) +
  theme_bw() +
  scale_y_continuous(limits = c(1500, 3000)) + # 
  scale_x_continuous(limits = c(0.5, 2)) + #
  theme(
    legend.position = "left",
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    legend.title = element_text(size = 25),
    legend.text = element_text(size = 15),
    panel.border = element_rect(linetype = 1, size = 2)
  ) +
  labs(fill = "Capacity") +
  guides(size = guide_legend(title = "Capacity"))

p 

ggsave(filename = "b4.pdf", width = 8, height = 5)

#
df2 <- read.csv("dis1.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)

q <- ggplot(df2, aes(PLD, Capacity)) +
  geom_point(colour = "#b2e1b9", alpha = 0.6, size = 3) +  
 #geom_point(data = filter(df2, topo == "pcu"),
             #fill = "#42a6cb", size = 5, shape = 21)+
 geom_point(data = filter(df2, organ_smiles == "['[O-]C(=O)C1=[C]C(=[C]C(=[C]1)C(=O)[O-])C(=O)[O-]']"),
             fill = "#d6efd0", size = 3, shape = 21)+
  #geom_point(data = filter(df2, topo == "nbo"),
            # fill = "#77cac5", size = 3, shape = 21)+
  theme_bw() +
  theme(
    legend.position = "left",
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    legend.title = element_text(size = 25),
    legend.text = element_text(size = 15),
    panel.border = element_rect(linetype = 1, size = 2)
  ) 

q

ggsave(filename = "d1.pdf", width = 6, height = 5)


#topo
df2 <- read.csv("dis1.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df2_filtered <- filter(df2, metal_smiles == "[Zn]" & 
                         organ_smiles == "['[O-]C(=O)C1=[C]C(=[C]C(=[C]1)C(=O)[O-])C(=O)[O-]']")
df2_filtered <- df2_filtered %>% filter(!name %in% c("VEHJID01_clean", "UNAGUN_clean", "UNAGOH_clean"))

df3_filtered <- filter(df2, metal_smiles == "[Zn]" & 
                         organ_smiles == "['[O-]C(=O)C1=[C][C]=C([C]=[C]1)C(=O)[O-]']")
df3_filtered <- df2 %>% filter(name %in% c("SERKOQ_clean", "UFENAW_clean"))

ggplot(df2, aes(PLD, Capacity)) +
  geom_point(colour = "#b2e1b9", alpha = 0.6, size = 3) +
  geom_point(data = df2_filtered, fill = "#42a6cb", size = 5, shape = 21) +
  geom_point(data = df3_filtered, fill = "#1373b2", size = 5, shape = 21) +
  theme_bw() +
  theme(
    legend.position = "left",
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    legend.title = element_text(size = 25),
    legend.text = element_text(size = 15),
    panel.border = element_rect(linetype = 1, size = 2)
  )

ggsave(filename = "d1.pdf", width = 6, height = 5)

#SUBs
df2 <- read.csv("dis1.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df2_filtered <- filter(df2, topo == "tbo" & 
                         organ_smiles == "['[O-]C(=O)C1=[C]C(=[C]C(=[C]1)C(=O)[O-])C(=O)[O-]']")
df2_filtered <- df2 %>% filter(name %in% c("NINVAI_clean", "cm501138g_si_005_clean", 
                                           "jp2064408_si_002_clean", "ZIGFEC_clean"))

df3_filtered <- filter(df2, topo == "pcu" & 
                         organ_smiles == "['[O-]C(=O)C1=[C][C]=C([C]=[C]1)C(=O)[O-]']")
df3_filtered <- df2 %>% filter(name %in% c("ic502730y_si_002_clean", "cm503311x_OH-mil-53-Al-lp-ortho_clean", 
                                           "jp102463p_si_002_clean", "SETRAM_clean",
                                           "DONNIE_clean", "MAYJOM_clean"))	

ggplot(df2, aes(PLD, Capacity)) +
  geom_point(colour = "#b2e1b9", alpha = 0.6, size = 3) +
  geom_point(data = df2_filtered, fill = "#42a6cb", size = 5, shape = 21) +
  geom_point(data = df3_filtered, fill = "#084384", size = 5, shape = 21) +
  theme_bw() +
  theme(
    legend.position = "left",
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    legend.title = element_text(size = 25),
    legend.text = element_text(size = 15),
    panel.border = element_rect(linetype = 1, size = 2)
  )
ggsave(filename = "d2.pdf", width = 6, height = 5)

#FOrgan
df2 <- read.csv("dis1.csv", sep=",", na.strings="NA", stringsAsFactors=FALSE)
df2_filtered <- filter(df2, topo == "srs" & 
                         metal_smiles == "[Zn]")
df21_filtered <- df2_filtered %>% filter(!(name %in% c("VEHJID01_clean","OWITAQ_clean")))
df3_filtered <- filter(df2, topo == "sql" & 
                         metal_smiles == "[Zn][Zn]")

df4_filtered <- filter(df2, topo == "sql" & 
                         metal_smiles == "[Cu][Cu]")



ggplot(df2, aes(PLD, Capacity)) +
  geom_point(colour = "#b2e1b9", alpha = 0.6, size = 3) +
  geom_point(data = df21_filtered, fill = "#42a6cb", size = 5, shape = 21) +
  geom_point(data = df3_filtered, fill = "#1373b2", size = 5, shape = 21) +
  #geom_point(data = df4_filtered, fill = "#084384", size = 5, shape = 21) +
  theme_bw() +
  theme(
    legend.position = "left",
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    legend.title = element_text(size = 25),
    legend.text = element_text(size = 15),
    panel.border = element_rect(linetype = 1, size = 2)
  )
ggsave(filename = "d3.pdf", width = 6, height = 5)


colors = c("#084384", "#1373b2", "#42a6cb", "#77cac5", "#b2e1b9", "#d6efd0", "#f4faed")



