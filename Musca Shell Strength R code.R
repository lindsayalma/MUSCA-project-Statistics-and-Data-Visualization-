library(readxl)
MUSCAShellStrengthForR <- read_excel("C:/Users/Lindsay/Dropbox/MUSCA/Shell Strength/MUSCAShellStrengthForR.xlsx")
View(MUSCAShellStrengthForR)

Scal<-subset(MUSCAShellStrengthForR, Species=="Scal"| Hole == "Edge")
Mus<-subset(MUSCAShellStrengthForR, Species=="Mus")
Scal<-subset(MUSCAShellStrengthForR, Species=="Scal")
View(Scal)

MUSCAShellStrengthForR$`Max force`

aggregate(`Max force` ~ Species +Treatment + Depth, data=MUSCAShellStrengthForR, mean)
aggregate(`Max force` ~ Species +Treatment + Depth, data=MUSCAShellStrengthForR, sd)
aggregate(`Max force` ~ Species +Treatment + Depth, data=MUSCAShellStrengthForR, length)

aov<-aov(Mpa~Treatment*Depth, data=Scal)
summary(aov)
TukeyHSD(aov)
library(lme4)
library(lmerTest)
Scal$Length=46.5
Scal$Length[which(Scal$Treatment=='T1'&Scal$Depth=='Deep')]=41.2
Scal$Length[which(Scal$Treatment=='T2'&Scal$Depth=='Shallow')]=55.6
Scal$Length[which(Scal$Treatment=='T2'&Scal$Depth=='Deep')]=45.3
aov<-aov(Mpa~Treatment*Depth+Hole, data=Scal[which(Scal$Treatment!='T0'),])
summary(lm(Mpa~Depth*Treatment+Hole*Treatment, data=Scal[which(Scal$Treatment!='T0'),]))
summary(aov)
TukeyHSD(aov)

aggregate(Mpa ~ Species+Depth+Treatment, data=MUSCAShellStrengthForR, mean)

aov<-aov(Mpa~Treatment*Depth, data=Scal)
summary(aov)
TukeyHSD(aov)
