
install.packages("readxl")
library(readxl)

MUSCA_isotopes_scallop_only <- read_excel("C:/Users/Lalma/Dropbox/MUSCA/SCA only/MUSCA isotopes scallop only.xlsx")
View(MUSCA_isotopes_scallop_only)

aggregate(`d15N vs Air N2 (permil)` ~ Time + Depth, data=MUSCA_isotopes_scallop_only, mean)
aggregate(`d15N vs Air N2 (permil)` ~ Time + Depth, data=MUSCA_isotopes_scallop_only, sd)
aggregate(`d15N vs Air N2 (permil)` ~ Time + Depth, data=MUSCA_isotopes_scallop_only, length)

aggregate(`d13C vs VPDB (permil)` ~ Time + Depth, data=MUSCA_isotopes_scallop_only, mean)
aggregate(`d13C vs VPDB (permil)` ~ Time + Depth, data=MUSCA_isotopes_scallop_only, sd)
aggregate(`d13C vs VPDB (permil)` ~ Time + Depth, data=MUSCA_isotopes_scallop_only, length)






aov<-aov(`d15N vs Air N2 (permil)`~as.factor(Time)*as.factor(Depth),data=MUSCA_isotopes_scallop_only)
summary(aov)
TukeyHSD(aov)

aov<-aov(`d15N vs Air N2 (permil)`~Time*Depth,data=musseliso)
summary(aov)
TukeyHSD(aov)

aov<-aov(`d13C vs VPDB (permil)`~Time*Depth,data=scallopiso)
summary(aov)
TukeyHSD(aov)

aov<-aov(`d13C vs VPDB (permil)`~Time*Depth,data=musseliso)
summary(aov)
TukeyHSD(aov)

