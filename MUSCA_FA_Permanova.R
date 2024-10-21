##PERMANOVA
library('vegan')
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
FAPercentages_Scallops$Depth=0
FAPercentages_Scallops$Depth[which(FAPercentages_Scallops$Treatment=='T2S'|FAPercentages_Scallops$Treatment=='T1S')]=1 #1=shallow, 0=deep
FAPercentages_Scallops$Season=0
FAPercentages_Scallops$Season[which(FAPercentages_Scallops$Treatment=='T2S'|FAPercentages_Scallops$Treatment=='T2D')]=1  #1=spring, 0=winter
View(FAPercentages_Scallops)
adonis(FAPercentages_Scallops[,1:21]~Depth*Season,data=FAPercentages_Scallops, permutations=10000) #stats for scallops


FAPercentages_Mussels$Depth=0
FAPercentages_Mussels$Depth[which(FAPercentages_Mussels$Treatment=='T2S'|FAPercentages_Mussels$Treatment=='T1S')]=1 #1=shallow, 0=deep
FAPercentages_Mussels$Season=0
FAPercentages_Mussels$Season[which(FAPercentages_Mussels$Treatment=='T2S'|FAPercentages_Mussels$Treatment=='T2D')]=1  #1=spring, 0=winter
View(FAPercentages_Mussels)
adonis(FAPercentages_Mussels[,1:23]~Depth*Season,data=FAPercentages_Mussels, permutations=10000) #stats for mussels

