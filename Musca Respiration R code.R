ScaTemp<-subset(Respiration, Species=="Sca" & Treatment =="Temp")
ScaTempAlive<-subset(Respiration, Species=="Sca" & Treatment =="Temp"& Level==c(8,13,18))
ScapH<-subset(Respiration, Species=="Sca" & Treatment =="pH")
MusTemp<-subset(Respiration, Species=="Mus" & Treatment=="Temp")
MusDO<-subset(Respiration, Species=="Mus" & Treatment=="DO")
MuspH<-subset(Respiration, Species=="Mus" & Treatment=="pH")

View(ScaTempAlive)

aggregate(MassSpecific~ Species+Level+Season+Depth+Treatment, data=Respiration, mean)
aggregate(MassSpecific~ Species+Level+Season+Depth+Treatment, data=Respiration, sd)

aov<-aov(MassSpecific~Season*Level*Depth, data=MusTemp)
summary(aov)
TukeyHSD(aov)
summary(lm(MassSpecific~Season*Level*Depth, data=MusTemp))
plot(lm(MassSpecific~Season*Level*Depth, data=MusTemp))


aov<-aov(MassSpecific~Season*Level*Depth, data=MuspH)
summary(aov)
TukeyHSD(aov)
summary(lm(MassSpecific~Season*Level*Depth, data=MuspH))

aov<-aov(SMR~Season*Level*Depth, data=MusDO)
summary(aov)
TukeyHSD(aov)

aov<-aov(MassSpecific~Season*Level*Depth, data=ScaTemp)
summary(aov)
TukeyHSD(aov)
summary(lm(MassSpecific~Season*Level*Depth, data=ScaTemp))

aov<-aov(MassSpecific~Season*Level*Depth, data=ScapH)
summary(aov)
TukeyHSD(aov)
summary(lm(MassSpecific~Season*Level*Depth, data=ScapH))

aov<-aov(MassSpecific~Season*Level*Depth, data=ScaTempAlive)
summary(aov)
TukeyHSD(aov)






