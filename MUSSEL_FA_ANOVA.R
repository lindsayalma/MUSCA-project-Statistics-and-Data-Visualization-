library(readxl)
FAPercentages_Mussels <- read_excel("FAPercentages Mussels.xlsx")
View(FAPercentages_Mussels)

aov<-aov(a~ Treatment, data=FAPercentages_Mussels) #C8:0
summary(aov)
TukeyHSD(aov)


aov<-aov(c~ Treatment, data=FAPercentages_Mussels) #C11:0 
summary(aov)
TukeyHSD(aov)


aov<-aov(d~ Treatment, data=FAPercentages_Mussels) #C12:0
summary(aov)
TukeyHSD(aov)


aov<-aov(e~ Treatment, data=FAPercentages_Mussels) #C13:0
summary(aov)
TukeyHSD(aov)

aov<-aov(f~ Treatment, data=FAPercentages_Mussels) #14:0
summary(aov)
TukeyHSD(aov)

aov<-aov(g~ Treatment, data=FAPercentages_Mussels) #14:1
summary(aov)
TukeyHSD(aov)

aov<-aov(h~ Treatment, data=FAPercentages_Mussels) #15:0
summary(aov)
TukeyHSD(aov)

aov<-aov(i~ Treatment, data=FAPercentages_Mussels) #15:1
summary(aov)
TukeyHSD(aov)

aov<-aov(j~ Treatment, data=FAPercentages_Mussels) #16:0
summary(aov)
TukeyHSD(aov)

aov<-aov(k~ Treatment, data=FAPercentages_Mussels) #16:1
summary(aov)
TukeyHSD(aov)

aov<-aov(l~ Treatment, data=FAPercentages_Mussels) #17:0
summary(aov)
TukeyHSD(aov)

aov<-aov(m~ Treatment, data=FAPercentages_Mussels) #17:1
summary(aov)
TukeyHSD(aov)

aov<-aov(n~ Treatment, data=FAPercentages_Mussels) #18:0
summary(aov)
TukeyHSD(aov)

aov<-aov(o~ Treatment, data=FAPercentages_Mussels) #18:1 trans
summary(aov)
TukeyHSD(aov)

aov<-aov(p~ Treatment, data=FAPercentages_Mussels) #18:1 cis
summary(aov)
TukeyHSD(aov)

aov<-aov(q~ Treatment, data=FAPercentages_Mussels) #18:2 trans
summary(aov)
TukeyHSD(aov)

aov<-aov(r~ Treatment, data=FAPercentages_Mussels) #18:2 cis
summary(aov)
TukeyHSD(aov)

aov<-aov(s~ Treatment, data=FAPercentages_Mussels) #18:3 n6
summary(aov)
TukeyHSD(aov)

aov<-aov(t~ Treatment, data=FAPercentages_Mussels) #18:3 n3
summary(aov)
TukeyHSD(aov)

aov<-aov(u~ Treatment, data=FAPercentages_Mussels) #20:1 n9
summary(aov)
TukeyHSD(aov)

aov<-aov(v~ Treatment, data=FAPercentages_Mussels) #20:2
summary(aov)
TukeyHSD(aov)


aov<-aov(x~ Treatment, data=FAPercentages_Mussels) #20:3 n3
summary(aov)
TukeyHSD(aov)

aov<-aov(y~ Treatment, data=FAPercentages_Mussels) #22:0
summary(aov)
TukeyHSD(aov)


aov<-aov(sfa~ Treatment, data=FAPercentages_Mussels) #SFA
summary(aov)
TukeyHSD(aov)

aov<-aov(mufa~ Treatment, data=FAPercentages_Mussels) #MUFA
summary(aov)
TukeyHSD(aov)

aov<-aov(pufa~ Treatment, data=FAPercentages_Mussels) #PUFA
summary(aov)
TukeyHSD(aov)

aov<-aov(omega3~ Treatment, data=FAPercentages_Mussels) #omega 3
summary(aov)
TukeyHSD(aov)

aov<-aov(omega6~ Treatment, data=FAPercentages_Mussels) #omega 6
summary(aov)
TukeyHSD(aov)



aggregate(sfa~Treatment, FAPercentages_Mussels, mean )
aggregate(mufa~Treatment, FAPercentages_Mussels, mean )
aggregate(pufa~Treatment, FAPercentages_Mussels, mean )

aggregate(c~Treatment, FAPercentages_Mussels, mean )
aggregate(c~Treatment, FAPercentages_Mussels, sd )

aggregate(d~Treatment, FAPercentages_Mussels, mean )
aggregate(d~Treatment, FAPercentages_Mussels, sd )

par(family="serif")
boxplot(sfa~ Treatment, data=FAPercentages, 
        xlab="Treatment", ylab="Percentage of Total Fatty Acids",
        col=(c("gray87","royalblue3","royalblue1","salmon3","salmon1"))#,
        #notch=TRUE
        )

boxplot(mufa~ Treatment, data=FAPercentages, 
        xlab="Treatment", ylab="Percentage of Total Fatty Acids",
        col=(c("gray87","royalblue3","royalblue1","salmon3","salmon1"))#,
        #notch=TRUE
)

boxplot(pufa~ Treatment, data=FAPercentages, 
        xlab="Treatment", ylab="Percentage of Total Fatty Acids",
        col=(c("gray87","royalblue3","royalblue1","salmon3","salmon1"))#,
        #notch=TRUE
)
