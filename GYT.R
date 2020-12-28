#ini buat olah data gyt
library(GGEBiplots)
library(GGEBiplots)
library(openxlsx)
setwd("/Users/andrewyoel/Downloads") #Set Direktori
df= read.xlsx('GT dan GYT Kcg ijo.xlsx', sheet = 2, rowNames = TRUE)
df<- scale (df) #feature Scaling
GYT<- GGEModel(df, centering = "global", scaling = "sd", SVP = "dual")
GYT1<- GGEModel(df1, centering = "double", scaling = "sd", SVP = "dual")
