install.packages('heatmaply')
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("ComplexHeatmap")
library(heatmaply)
library(openxlsx)
library(janitor)
library(ComplexHeatmap)
library(dendextend)
library(circlize)
library(RColorBrewer)
getwd()
df= read.xlsx("data kedelai skripsi .xlsx", rowNames = TRUE)
head(df)
df<- scale(df)
row_dend = hclust(dist(df)) # row clustering
col_dend = hclust(dist(t(df))) # column clustering
Heatmap(df, name = "Kedelai", 
        row_names_gp = gpar(fontsize = 6.5),
        cluster_rows = color_branches(row_dend, k = 4),
        cluster_columns = color_branches(col_dend, k = 4))
