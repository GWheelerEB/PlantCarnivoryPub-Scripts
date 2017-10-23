Data<-read_csv("/Path/To/Data/Genes-Adjusted.csv",col_names = FALSE)

T2<-t.test(as.numeric(Data[3:12,2]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T3<-t.test(as.numeric(Data[3:12,3]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T4<-t.test(as.numeric(Data[3:12,4]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T5<-t.test(as.numeric(Data[3:12,5]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T6<-t.test(as.numeric(Data[3:12,6]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T7<-t.test(as.numeric(Data[3:12,7]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T8<-t.test(as.numeric(Data[3:12,8]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T9<-t.test(as.numeric(Data[3:12,9]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T10<-t.test(as.numeric(Data[3:12,10]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T11<-t.test(as.numeric(Data[3:12,11]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T12<-t.test(as.numeric(Data[3:12,12]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T13<-t.test(as.numeric(Data[3:12,13]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T14<-t.test(as.numeric(Data[3:12,14]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T15<-t.test(as.numeric(Data[3:12,15]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T16<-t.test(as.numeric(Data[3:12,16]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T17<-t.test(as.numeric(Data[3:12,17]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T18<-t.test(as.numeric(Data[3:12,18]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T19<-t.test(as.numeric(Data[3:12,19]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T20<-t.test(as.numeric(Data[3:12,20]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T21<-t.test(as.numeric(Data[3:12,21]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T22<-t.test(as.numeric(Data[3:12,22]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T23<-t.test(as.numeric(Data[3:12,23]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T24<-t.test(as.numeric(Data[3:12,24]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T25<-t.test(as.numeric(Data[3:12,25]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)
T27<-t.test(as.numeric(Data[3:12,27]) ~ Data[3:12,28],alternative=c("greater"),paired=FALSE,conf.level=0.95)

Summary<-matrix(nrow=25,ncol=3)
rownames(Summary)<-c("Actin", "AltOx", "NHTrans", "AspPep", "ATP_ADP", "ATP", "BGal", "Chit", "CinAlc", "CystPep", "FrucBPA", "GlutTrans", "Lipase", "LipTrans", "Perox", "Phosp", "Phoslip", "Polygal", "ProtHomo", "RiboNuc", "SerCarPep", "ThioGluc", "H2OChan", "HeatShock", "Total")
colnames(Summary)<-c("t","p","q")
Summary[,1]<-c(T2$statistic, T3$statistic, T4$statistic, T5$statistic, T6$statistic, T7$statistic, T8$statistic, T9$statistic, T10$statistic, T11$statistic, T12$statistic, T13$statistic, T14$statistic, T15$statistic, T16$statistic, T17$statistic, T18$statistic, T19$statistic, T20$statistic, T21$statistic, T22$statistic, T23$statistic, T24$statistic, T25$statistic, T27$statistic)
Summary[,2]<-c(T2$p.value, T3$p.value, T4$p.value, T5$p.value, T6$p.value, T7$p.value, T8$p.value, T9$p.value, T10$p.value, T11$p.value, T12$p.value, T13$p.value, T14$p.value, T15$p.value, T16$p.value, T17$p.value, T18$p.value, T19$p.value, T20$p.value, T21$p.value, T22$p.value, T23$p.value, T24$p.value, T25$p.value, T27$p.value)
Summary[,3]<-qvalue(Summary[,2], pi0.method="bootstrap",fdr.level = 0.05)$qvalues

attach(mtcars)
Params<-par(mfrow=c(5,5), oma = c(5,4,1,1) + 0.1, mar = c(1.5,2,3,1) + 0.35)

boxplot(as.numeric(Data[3:12,2]) ~ Data[3:12,28], main=Data[1,2], ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,2]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T2$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,3]) ~ Data[3:12, 28], main=Data[1,3], ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,3]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T3$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,4]) ~ Data[3:12, 28], main=Data[1,4], cex.main=1.1, xlab=capture.output(cat("p = ",T4$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,4]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T4$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,5]) ~ Data[3:12, 28], main=Data[1,5], xlab=capture.output(cat("p = ",T5$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,5]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T5$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,6]) ~ Data[3:12, 28], main=Data[1,6], xlab=capture.output(cat("p = ",T6$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,6]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T6$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,7]) ~ Data[3:12, 28], main=Data[1,7], xlab=capture.output(cat("p = ",T7$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,7]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T7$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,8]) ~ Data[3:12, 28], main=Data[1,8], xlab=capture.output(cat("p = ",T8$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,8]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T8$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,9]) ~ Data[3:12, 28], main=Data[1,9], xlab=capture.output(cat("p = ",T9$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,9]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T9$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,10]) ~ Data[3:12, 28], main=Data[1,10], cex.main=1.05, xlab=capture.output(cat("p = ",T10$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,10]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T10$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,11]) ~ Data[3:12, 28], main=Data[1,11], xlab=capture.output(cat("p = ",T11$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,11]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T11$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,12]) ~ Data[3:12, 28], main=Data[1,12], cex.main=1.1, xlab=capture.output(cat("p = ",T12$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,12]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T12$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,13]) ~ Data[3:12, 28], main=Data[1,13], xlab=capture.output(cat("p = ",T13$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,13]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T13$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,14]) ~ Data[3:12, 28], main=Data[1,14], xlab=capture.output(cat("p = ",T14$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,14]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T14$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,15]) ~ Data[3:12, 28], main=Data[1,15], xlab=capture.output(cat("p = ",T15$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,15]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T15$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,16]) ~ Data[3:12, 28], main=Data[1,16], xlab=capture.output(cat("p = ",T16$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,16]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T16$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,17]) ~ Data[3:12, 28], main=Data[1,17], xlab=capture.output(cat("p = ",T17$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,17]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T17$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,18]) ~ Data[3:12, 28], main=Data[1,18], xlab=capture.output(cat("p = ",T18$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,18]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T18$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,19]) ~ Data[3:12, 28], main=Data[1,19], xlab=capture.output(cat("p = ",T19$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,19]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T19$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,20]) ~ Data[3:12, 28], main=Data[1,20], xlab=capture.output(cat("p = ",T20$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,20]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T20$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,21]) ~ Data[3:12, 28], main=Data[1,21], xlab=capture.output(cat("p = ",T21$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,21]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T21$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,22]) ~ Data[3:12, 28], main=Data[1,22], cex.main=1.1, xlab=capture.output(cat("p = ",T22$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,22]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T22$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,23]) ~ Data[3:12, 28], main=Data[1,23], xlab=capture.output(cat("p = ",T23$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,23]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T23$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,24]) ~ Data[3:12, 28], main=Data[1,24], xlab=capture.output(cat("p = ",T24$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,24]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T24$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,25]) ~ Data[3:12, 28], main=Data[1,25], xlab=capture.output(cat("p = ",T25$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,25]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T25$p.value)),3,cex=0.7)

boxplot(as.numeric(Data[3:12,27]) ~ Data[3:12, 28], main=Data[1,27], xlab=capture.output(cat("p = ",T27$p.value)), ylab="Representation (#/K)")
stripchart(as.numeric(Data[3:12,10]) ~ Data[3:12,28], vertical=TRUE, add=TRUE, pch=19, col="black")
mtext(capture.output(cat("p = ",T27$p.value)),3,cex=0.7)

title(ylab = "Proportion Represented (#/K)", xlab = "Class", outer = TRUE, line = 1, cex.lab=1.8)

par(Params)

