aov<-aov(a~ Treatment, data=FAPercentages_Scallops) #C8:0 NO
summary(aov)
TukeyHSD(aov)

aggregate(c~Treatment, FAPercentages_Scallops, mean )
aov<-aov(c~ Treatment, data=FAPercentages_Scallops) #C11:0 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(d~ Treatment, data=FAPercentages_Scallops) #C12:0 Y
summary(aov)
TukeyHSD(aov)


aov<-aov(e~ Treatment, data=FAPercentages_Scallops) #C13:0 N
summary(aov)
TukeyHSD(aov)

aov<-aov(f~ Treatment, data=FAPercentages_Scallops) #14:0 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(g~ Treatment, data=FAPercentages_Scallops) #14:1 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(h~ Treatment, data=FAPercentages_Scallops) #15:0 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(i~ Treatment, data=FAPercentages_Scallops) #15:1 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(j~ Treatment, data=FAPercentages_Scallops) #16:0 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(k~ Treatment, data=FAPercentages_Scallops) #16:1 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(l~ Treatment, data=FAPercentages_Scallops) #17:0 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(m~ Treatment, data=FAPercentages_Scallops) #17:1 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(o~ Treatment, data=FAPercentages_Scallops) #18:1 trans Y
summary(aov)
TukeyHSD(aov)

aov<-aov(p~ Treatment, data=FAPercentages_Scallops) #18:1 cis Y
summary(aov)
TukeyHSD(aov)

aov<-aov(q~ Treatment, data=FAPercentages_Scallops) #18:2 trans Y
summary(aov)
TukeyHSD(aov)

aov<-aov(s~ Treatment, data=FAPercentages_Scallops) #18:3 n6 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(t~ Treatment, data=FAPercentages_Scallops) #18:3 n3 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(u~ Treatment, data=FAPercentages_Scallops) #20:0 N
summary(aov)
TukeyHSD(aov)

aov<-aov(w~ Treatment, data=FAPercentages_Scallops) #20:2 Y
summary(aov)
TukeyHSD(aov)

aov<-aov(y~ Treatment, data=FAPercentages_Scallops) #20:4 n6 N
summary(aov)
TukeyHSD(aov)

aov<-aov(aa~ Treatment, data=FAPercentages_Scallops) #22:0 Y
summary(aov)
TukeyHSD(aov)


aov<-aov(sfa~ Treatment, data=FAPercentages_Scallops) #SFA
summary(aov)
TukeyHSD(aov)


aov<-aov(mufa~ Treatment, data=FAPercentages_Scallops) #MUFA
summary(aov)
TukeyHSD(aov)

aov<-aov(pufa~ Treatment, data=FAPercentages_Scallops) #PUFA
summary(aov)
TukeyHSD(aov)

aov<-aov(omega3~ Treatment, data=FAPercentages_Scallops) #omega 3
summary(aov)
TukeyHSD(aov)

aov<-aov(omega6~ Treatment, data=FAPercentages_Scallops) #omega 6
summary(aov)
TukeyHSD(aov)




aggregate(sfa~Treatment, FAPercentages_Scallops, mean )
aggregate(mufa~Treatment, FAPercentages_Scallops, mean )
aggregate(pufa~Treatment, FAPercentages_Scallops, mean )

aggregate(sfa~Treatment, FAPercentages_Scallops, sd )
aggregate(mufa~Treatment, FAPercentages_Scallops, sd )
aggregate(pufa~Treatment, FAPercentages_Scallops, sd )

par(family="serif")
boxplot(sfa~ Treatment, data=FAPercentages_Scallops, 
        xlab="Treatment", ylab="Percentage of Total Fatty Acids",
        col=(c("gray87","royalblue3","royalblue1","salmon3","salmon1"))#,
        #notch=TRUE
        )

boxplot(mufa~ Treatment, data=FAPercentages_Scallops, 
        xlab="Treatment", ylab="Percentage of Total Fatty Acids",
        col=(c("gray87","royalblue3","royalblue1","salmon3","salmon1"))#,
        #notch=TRUE
)

boxplot(pufa~ Treatment, data=FAPercentages_Scallops, 
        xlab="Treatment", ylab="Percentage of Total Fatty Acids",
        col=(c("gray87","royalblue3","royalblue1","salmon3","salmon1"))#,
        #notch=TRUE
)

boxplot(omega3~ Treatment, data=FAPercentages_Scallops, 
        xlab="Treatment", ylab="Percentage of Total Fatty Acids",
        col=(c("gray87","royalblue3","royalblue1","salmon3","salmon1"))#,
        #notch=TRUE
)

boxplot(omega6~ Treatment, data=FAPercentages_Scallops, 
        xlab="Treatment", ylab="Percentage of Total Fatty Acids",
        col=(c("gray87","royalblue3","royalblue1","salmon3","salmon1"))#,
        #notch=TRUE
)
