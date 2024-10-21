library(readxl)
NMDS_metadata_mussel <- read_excel("C:/Users/Lindsay/Dropbox/MUSCA/FattyAcids/NMDS metadata mussel.xlsx")
NMDS_metadata_scallop <- read_excel("C:/Users/Lindsay/Dropbox/MUSCA/FattyAcids/NMDS metadata scallop.xlsx")
NMDS_FAPercentages_Mussels <- read_excel("C:/Users/Lindsay/Dropbox/MUSCA/FattyAcids/NMDS FAPercentages Mussels.xlsx")
NMDS_FAPercentages_Scallops <- read_excel("C:/Users/Lindsay/Dropbox/MUSCA/FattyAcids/NMDS FAPercentages Scallops.xlsx")

colors<- c("steelblue4", "#000066","#CC3333", "#990033")

#scallop NMDS
library(vegan)
library(ggplot2)
View(NMDS_FAPercentages_Scallops)
View(NMDS_metadata_scallop)
# calculate distance for NMDS
sol <- metaMDS(NMDS_FAPercentages_Scallops, "bray", 2)
str(sol)
# Create meta data for grouping, must be same amount of rows, and rows line up
# plot NMDS using basic plot function and color points by "treatment" in NMDSmetadatasienna3
#colors <- c("#191970", "deepskyblue", "sienna3", "#CC9933")
#colors2<- c("yellow4", "deepskyblue1", "#00CC99", "hotpink1")
#colors2 <- c("#191970", "sienna3", "deepskyblue", "#CC9933")
plot(sol$points,  pch=20, xlab="NMDS1", ylab="NMDS2", col=(c("#CC3333","steelblue4","#990033", "#000066"))[NMDS_metadata_scallop$Colors])
# draw dispersion ellipses around data p.oints
plot<-ordihull(sol,groups=NMDS_metadata_scallop$Treatment, draw="polygon",col=(c("#CC3333","#990033", "steelblue4","#000066")),label=F, border = (c("#CC3333", "#990033","steelblue4", "#000066")))
#ordiellipse(sol, NMDS_metadata_scallop$Treatment, display = "sites", kind = "sd", col = colors, draw=polygon(NMDS_metadata_scallop$Treatment), setLab = FALSE)

#(c("#000066","#CC3333", "#990033","steelblue4"))
#99=magenta
#000066" =dark blue


#mussel NMDS
library(vegan)
library(ggplot2)

# calculate distance for NMDS
  sol <- metaMDS(NMDS_FAPercentages_Mussels, "bray", 2)
str(sol)
# Create meta data for grouping, must be same amount of rows, and rows line up
# plot NMDS using basic plot function and color points by "treatment" in NMDSmetadata
colors <- c("#191970", "deepskyblue", "sienna3", "#CC9933")
#colors2<- c("yellow4", "deepskyblue1", "#00CC99", "hotpink1")
#colors2 <- c("#191970", "sienna3", "deepskyblue", "#CC9933")
plot(sol$points,  pch=20, xlab="NMDS1", ylab="NMDS2", col=(c("#CC3333","steelblue4","#990033", "#000066"))[NMDS_metadata_scallop$Colors])
# draw dispersion ellipses around data p.oints
plot<-ordihull(sol,groups=NMDS_metadata_scallop$Treatment, draw="polygon",col=(c("#CC3333","#990033", "steelblue4","#000066")),label=F, border = (c("#CC3333", "#990033","steelblue4", "#000066")))
#ordiellipse(sol, NMDS_metadata_scallop$Treatment, display = "sites", kind = "sd", col = colors, draw=polygon(NMDS_metadata_scallop$Treatment), setLab = FALSE)

